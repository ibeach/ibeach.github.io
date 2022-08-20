% Code by Isabel Beach 
% According to the solution to the geodesic equation
% given by do Carmo on pg. 255 of do Carmo's "Differential Geometry of
% Curves and Surfaces".
%   This program takes functions f, g, and their
% derivatives (defined below) and plots the surface of revolution defined
% by (f(v)*sin(u), f(v)*cos(u), g(v)). Then we plot a geodesic on this
% surface determined by the set parameters. By default, the surface is a 
% parabaloid. 
%   The choice of geodesic is determined by the choice of geodesicVMin,
% geodesicVMax, and cVal. The number cVal corresponds to the constant in
% Clairaut's relation for the geodesic curve h(t) = (u(t), v(t)), which is:
%       cVal = f^2(v(t))*u'(t)
% This fixes the velocity vector (direction) of the geodesic. Then we
% attempt to solve the geodesic equation starting at the point 
% (0, geodesicVMin) in (u, v)-coordinates and ending at height (at most)
% geodesicVMax. We do this by evaluating
%       u = cVal*(integral of geodesicIntegrand(v, c) with respect to v)
% with the integral taken from geodesicVMin to geodesicVMax. Note that this
% code does not attempt to check if you have chosen valid parameters for
% the geodesic: if you did not, the integral solver in geodesicIntegrand
% will probably return an error. Note that this program cannot solve for
% geodesics given by parallels (constant v curves) because the denominator 
% in the integrand will be zero. Such a curve will be a geodesic if and 
% only if f'(v)=0, so they can be found easily through other means.

% Options -----------------------------------------------------------------
% uSurfRes: real scalar determining the number of u-coordinates
% vSurfRes: real scalar determining the number of v-coordinates
% geoRes: real scalar determining the number of points per geodesic
% vMin: real scalar determining the minimum v-coordinate value we want to
%       plot for our surface.
% vMax: real scalar determining the maximum v-coordinate value we want to
%       plot for our surface.
% geodesicVMin: real scalar determining the minimum possible v-coordinate 
%               value of a geodesic
% geodesicVMax: real scalar determining the maximum possible v-coordinate 
%               value of a geodesic
% geodesicVInit: initial v-coordinate value of our geodesic
% theta: angle (in radians) for the initial velocity
% cVal: real, positive value for the constant in clairaut's relation. By
%       default, this is set to give you a geodesic that passes through 
%       (0, geodesicVMin) in (u, v)-coordineates with velocity given by 
%       angle theta with the parallel (curve of constant v). You can set 
%       this to some other value if you wish, but some values may not give 
%       valid geodesics. 

uSurfRes = 200;
vSurfRes = 200;
geoRes = 800;
vMin = 0;
vMax = 1;
geodesicVMin = 0.2;
geodesicVMax = 1;
theta = 0;
cVal = f(geodesicVMin)*cos(theta);

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
validV = geodesicVMin:(1e-3):geodesicVMax;
[xGeo, yGeo, zGeo] = getGeodesic(validV, cVal);
plot3(xGeo, yGeo, zGeo, '-', 'Linewidth', 2, 'Color', [0,0,0]);

% alter viewing angle for aesthetics
view(80,20);

function val = f(v)
    % Evaluates the function f, which is the radius of the desired surface
    % of revolution, on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.
    
    val = v;
end

function val = fPrime(v)
    % Evaluates the derivative of the function f on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.
    
    val = 1;
end

function val = g(v)
    % Evaluates the function g, which is the height of the desired surface
    % of revolution, on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.
    
    val = v.^2;
end

function val = gPrime(v)
    % Evaluates the derivative of the function g on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.
    
    val = 2.*v;
end

function [x, y, z] = getSurfaceXYZ(u, v)
    % Outputs the (x,y,z)-coordinates that correspond to the input 
    % (u, v)-coordinates on the surface of revolution. The surface is
    % determined by the functions f and g.
    % u: real matrix.
    % v: real matrix the same size as u.
    % x: real matrix the same size as u.
    % y: real matrix the same size as u.
    % z: real matrix the same size as u.
    
    x = f(v).*cos(u);
    y = f(v).*sin(u);
    z = g(v);
end 

function val = geodesicIntegrand(v, c)
    % Evaluates the integrand in the geodesic formula on the surface of
    % revolution described by the functions f and g at the points v with 
    % constant c.
    % v: real matrix.
    % c: real number.
    % val: real matrix the same size as v.
    
    underRoot = (fPrime(v).^2 + gPrime(v).^2)./(f(v).^2 - c^2);
    val = (1./f(v)).*sqrt(underRoot);
end

function [x, y, z] = getGeodesic(v, c)
    % Outputs the (x, y, z)-coordinates of the geodesic given by the input 
    % data v and c, assuming that the initial u value of the geodesic is zero.
    % v: real vector.
    % c: real number.
    % v: real vector the same size as v.
    % x: real vector the same size as v.
    % y: real vector the same size as v.
    
    u = zeros(size(v));
    if c > 1e-15
        for iV = 2:numel(v)
            val = integral(@(x) geodesicIntegrand(x, c), v(iV-1), v(iV), 'RelTol', 1e-4);
            u(iV) = c.*val(1) + u(iV-1);
        end
    end
    [x, y, z] = getSurfaceXYZ(u, v);
end