% Code by Isabel Beach 
% According to the solution to the geodesic equation
% given by do Carmo on pg. 255 of do Carmo's "Differential Geometry of
% Curves and Surfaces".
%   This program plots the geodesic on a paraboloid. The choice of geodesic 
% is determined by the choice of geodesicVMin, corresponding to the
% geodesic passing through the point (0, geodesicVMin) in (u,v)-coordinates
% that is tangent to the parallel curve of height geodesicVMin.

% Options -----------------------------------------------------------------
% uSurfRes: real scalar determining the number of u-coordinates.
% vSurfRes: real scalar determining the number of v-coordinates.
% geoRes: real scalar determining the number of points per geodesic.
% vMin: real non-negative scalar determining the minimum v-coordinate value 
%       we want to plot for our surface.
% vMax: real scalar determining the maximum v-coordinate value we want to
%       plot for our surface. Should be larger than vMin.
% geodesicVMin: real scalar determining the minimum possible v-coordinate 
%               value of a geodesic. Should be larger than vMin.

uSurfRes = 200;
vSurfRes = 200;
geoRes = 800;
vMin = 0;
vMax = 1;
geodesicVMin = 0;

% Code --------------------------------------------------------------------

% find 3d points of the underlying surface
uSurf = linspace(0, 2.*pi, uSurfRes);
vSurf = linspace(vMin, vMax, vSurfRes);
[uSurfMesh, vSurfMesh] = meshgrid(uSurf, vSurf);
[xSurf, ySurf, zSurf] = getSurfaceXYZ(uSurfMesh, vSurfMesh);

% plot surface
figure(1);
clf(1);
hold on;
surf(xSurf, ySurf, zSurf);
colormap winter
shading interp

% find 3d points of geodesic and plot the curve
[xGeo, yGeo, zGeo] = getGeodesic(geodesicVMin, vMax, geoRes);
plot3(xGeo, yGeo, zGeo, '-', 'Linewidth', 2, 'Color', [0,0,0]);

% alter viewing angle for aesthetics
view(80,20);

function [x, y, z] = getSurfaceXYZ(u, v)
    % Outputs the (x,y,z)-coordinates that correspond to the input 
    % (u, v)-coordinates on the surface of revolution. The surface is
    % determined by the functions f and g.
    % u: real matrix.
    % v: real matrix the same size as u.
    % x: real matrix the same size as u.
    % y: real matrix the same size as u.
    % z: real matrix the same size as u.
    
    x = v.*cos(u);
    y = v.*sin(u);
    z = v.^2;
end 

function val = geodesicIntegrand(v, c)
    % Evaluates the integrand in the geodesic formula on the surface of
    % revolution described by the functions f and g at the points v with 
    % constant c.
    % v: real matrix.
    % c: real number.
    % val: real matrix the same size as v.
    
    underRoot = (1 + 4*v.^2)./(v.^2 - c^2);
    val = (1./v).*sqrt(underRoot);
end

function [x, y, z] = getGeodesic(geodesicVMin, vMax, geoRes)
    % Outputs the (x, y, z)-coordinates of the geodesic given by the input 
    % data v and c, assuming that the initial u value of the geodesic is zero.
    % v: real vector.
    % c: real number.
    % v: real vector the same size as v.
    % x: real vector the same size as v.
    % y: real vector the same size as v.
    
    v = linspace(geodesicVMin, vMax, geoRes);
    u = zeros(1, geoRes);
    if geodesicVMin > 1e-15
        for iV = 2:geoRes
            val = integral(@(x) geodesicIntegrand(x, geodesicVMin), v(iV-1), v(iV));
            u(iV) = geodesicVMin.*val + u(iV-1);
        end
        u = [-u(end:-1:2), u];
    else        
        u = [pi*ones(1, geoRes-1), u];
    end    
    v = [v(end:-1:2), v];
    [x, y, z] = getSurfaceXYZ(u, v);
end