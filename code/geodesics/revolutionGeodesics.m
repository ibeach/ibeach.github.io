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
% stepSize: real scalar determining distance between v values.
% maxStepNum: maximum number of points to sample on geodesic (forces code
%             to terminate in the case of a geodesic that does not leave 
%             the graphed region of the surface)
% cTol: real scalar determining minimum difference between f(v) and c
%       before assuming equality. Lower values may produce a more accurate
%       geodesic, but may prevent the integral in getGeodesic from
%       converging.
% vMin: real scalar determining the minimum v-coordinate value we want to
%       plot for our surface.
% vMax: real scalar determining the maximum v-coordinate value we want to
%       plot for our surface.
% cVal: real, positive value for the constant in clairaut's relation. By
%       default, this is set to give you a geodesic that passes through 
%       (0, geodesicVMin) in (u, v)-coordineates with velocity given by 
%       angle theta with the parallel (curve of constant v). You can set 
%       this to some other value if you wish, but some values may not give 
%       valid geodesics. 

uSurfRes = 200;
vSurfRes = 200;
stepSize = 1e-2;
maxStepNum = 10000;
cTol = 1e-5;
vMin = -2;
vMax = 2;
cVal = f(vMin).*cos(pi/4);

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
v = getValidVPoints(vMin, vMax, cVal, stepSize, maxStepNum, cTol);
[x, y, z] = getGeodesic(v, cVal);
plot3(x, y, z, '-', 'Linewidth', 2, 'Color', [0,0,0]);

% alter viewing angle for aesthetics
view(80,20);

function val = f(v)
    % Evaluates the function f, which is the radius of the desired surface
    % of revolution, on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.
    
    val = cosh(v);
end

function val = fPrime(v)
    % Evaluates the derivative of the function f on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.
    
    val = sinh(v);
end

function val = g(v)
    % Evaluates the function g, which is the height of the desired surface
    % of revolution, on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.

    val = sinh(v);
end

function val = gPrime(v)
    % Evaluates the derivative of the function g on the input v.
    % v: real matrix.
    % val: real matrix the same size as v.
    
    val = cosh(v);
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

function v = getValidVPoints(vMin, vMax, c, stepSize, maxStepNum, cTol)
    % Return a real vector of the v-coordinates of the geodesic determined
    % by c. The algorithm here is quick and dirty: we check all points in
    % vMin:stepSize:vMax for a zero-crossing of f(v)^2-c^2, and change the
    % direction of the geodesic at each zero. This algorithm cannot
    % detect when two zero crossings occur at distance less than stepSize.
    % vMin: minimum potential v-coordinate to geodesic (e.g., the minimum
    %       v value for the surface plot)
    % vMax: maximum potential v-coordinate to geodesic (e.g., the maximum
    %       v value for the surface plot)
    % c: Clairaut's constant for the desired geodesic (positive real scalar)
    % stepSize: real scalar determining distance between v values.
    % maxStepNum: maximum number of points to sample on geodesic (forces code
    %             to terminate in the case of a geodesic that does not leave 
    %             the graphed region of the surface)
    % cTol: real scalar determining minimum difference between f(v) and c
    %       before assuming equality. Lower values may produce a more accurate
    %       geodesic, but may prevent the integral in getGeodesic from
    %       converging.
    % v: real vector of length at most maxStepNum.

    v = vMin;
    vIncrement = stepSize;
    while v(end) <= vMax && v(end) >= vMin && numel(v) < maxStepNum
        if f(v(end))^2 - c^2 < cTol
            if f(v(end))^2 < c^2 
                zeroIntegrandDenom = fzero(@(x) f(x).^2 - c^2, v(end-1:end));
                v(end) = zeroIntegrandDenom;
            end
            vIncrement = -vIncrement;
        end
        v(end + 1) = v(end) + vIncrement;
    end
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
    
    u = zeros(1, numel(v));
    for iV = 2:numel(v)
        endpoints = sort(v(iV-1:iV));
        val = integral(@(x) geodesicIntegrand(x, c), endpoints(1), endpoints(2));
        u(iV) = c.*val+ u(iV-1);
    end
    [x, y, z] = getSurfaceXYZ(u, v);
end