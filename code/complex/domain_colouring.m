% Domain Colouring -- Code by Isabel Beach
% Given a complex function and a set of points, this evaluates and plots 
% the image of a rectangular grid and a set of concentric circles under the 
% provided function. The background of the plot is coloured according to
% the argument of the function at the relevant point.
% -------------------------------------------------------------------------

% Options -----------------------------------------------------------------
% saveImageFile: save a PNG of the plot.
% showColouring: display the domain colouring background.
% showGrid: show the images of the grid lines.
% showCircles: show the images of the concentric circles. 

saveImageFile = 1;
showColouring = 1;
showGrid = 1;
showCircles = 0;

% Parameters --------------------------------------------------------------
% filename: filename of PNG to save (do not include file suffix).
% xRange: x range of plot.
% xRes: number of domain coloured pixels to display per horizontal line.
% yRangee: y range of plot.
% yRes: number of domain coloured pixels to display per vertical line.
% xGridRange: x range of grid lines.
% xGridRes: number of points per horizontal grid line.
% xGridNum: number of horizontal grid lines.
% yGridRange: y range of grid lines.
% yGridRes: number of points per vertical grid line.
% yGridNum: number of vertical grid lines.
% circleRange: maximum radius of concentric circles.
% circleRes: number of points per circle.
% circleNum: number of circles.

filename = 'mobius';
xRange = 2;
xRes = 500;
yRange = xRange;
yRes = xRes;
xGridRange = 50;
xGridRes = 5000;
xGridNum = 200;
yGridRange = xGridRange;
yGridRes = xGridRes;
yGridNum = xGridNum;
circleRange = 100;
circleRes = 500;
circleNum = 4;

% Code --------------------------------------------------------------------
    
figure(1);
clf(1);
hold on;
if showColouring == 1
    gridPts = getComplexPts(xRange, xRes, yRange, yRes);
    colorPts = getDomainColouring(gridPts);
    colormap hsv;
    caxis([0, 1]);
    fig = pcolor(real(gridPts), imag(gridPts), colorPts);
    fig.EdgeColor = 'None'; 
end
if showGrid == 1
    [xLines, yLines] = getImageLines(xGridRange, xGridRes, xGridNum, ...
                                    yGridRange, yGridRes, yGridNum);
    plot(xLines, '-k');
    plot(yLines, '-k');
end
if showCircles == 1
    imageCircles = getImageCircles(circleRange, circleRes, circleNum);
    plot(real(imageCircles), imag(imageCircles), '-k');
end
xlim([-xRange,xRange]);
ylim([-yRange,yRange]);
if saveImageFile
    print(gcf, [filename, '.png'], '-dpng', '-r150', '-opengl');
end

% Functions ---------------------------------------------------------------

function imagePts = f(zPts)
    % Evaluates the desired function on the complex points zPts.
    % zPts: complex-valued matrix.
    % imagePts: real-valued vector or matrix the same size as zPts.

%     imagePts = 1j.*(1 - zPts)./(zPts + 1);
%     imagePts = (1j - zPts)./(zPts + 1j);
    imagePts = (1 + 1/2.*zPts)./(1/2 - 1.*zPts);
end

function gridPts = getComplexPts(xRange, xRes, yRange, yRes)
    % Returns complex square matrix representing an evenly spaced 
    % rectangular grid of points in the complex plane, centred at the origin.
    % xRange: real scalar determining x-length of grid from the origin.
    % xRes: real scalar determining the number of points in each horizontal line.
    % yRange: real scalar determining y-length of grid from the origin.
    % yRes: real scalar determining the number of points in each vertical line.
    % gridPts: complex square matrix of side-length gridRes.

    xIncrement = 2*xRange/xRes;
    yIncrement = 2*yRange/yRes;
    xPts = -xRange:xIncrement:xRange;
    yPts = -yRange:yIncrement:yRange;
    [xMesh, yMesh] = meshgrid(xPts, yPts);
    gridPts = xMesh + 1j.*yMesh;
end

function colorPts = getDomainColouring(zPts)
    % Returns real matrix representing the argument of each point in zPts.
    % zPts: complex-valued matrix.
    % colorPts: real-valued matrix the same size as zPts.

    theta = angle(f(zPts));
    theta(theta < 0) = theta(theta < 0) + 2*pi;
    colorPts = theta./2./pi;
end

function [horzImagePts, vertImagePts] = getImageLines(xRange, xRes, xNum, ...
                                                      yRange, yRes, yNum)
    % Returns two real matrices representing the image of a given grid under
    % the function f. The first matrix is the image of the horizontal lines
    % in the grid, and the second is the image of the vertical lines.
    % xRange: real scalar determining x-length of grid from the origin.
    % xRes: real scalar determining the number of points in each horizontal line.
    % xNum: real scalar determining the number of horizontal lines.
    % yRange: real scalar determining y-length of grid from the origin.
    % yRes: real scalar determining the number of points in each vertical line.
    % yNum: real scalar determining the number of vertical lines.
    % horzLineImages: real matrix of size xRes-by-xNum.
    % vertLineImages: real matrix of size yRes-by-yNum.
    
    horzAxis = linspace(-xRange, xRange, xRes);
    horzLineHeights = linspace(-yRange, yRange, xNum);
    horzLines = horzAxis' + 1j.*horzLineHeights;   
    horzImagePts = f(horzLines);    
    vertAxis = linspace(-yRange, yRange, yRes);
    vertLineOrigins = linspace(-xRange, xRange, yNum);
    vertLines = vertLineOrigins + 1j.*vertAxis';
    vertImagePts = f(vertLines);
end

function circleImagePts = getImageCircles(circleRange, circleRes, circleNum)
    % Returns real matrix representing the image of circles centered at the 
    % origin under the function f.
    % circleRange: real scalar determining maximum circle radius.
    % circleRes: real scalar determining number of points per circle.
    % circleNum: real scalar determining number of circles.
    % circleImagePts: real matrix of size circleRes-by-circleNum.

    theta = 0:(2*pi/circleRes):2*pi;
    rad = 0:(circleRange/circleNum):circleRange;
    [radGrid, thetaGrid] = meshgrid(rad, theta);
    circlePts = radGrid.*exp(1j.*(thetaGrid));
    circleImagePts = f(circlePts);
end