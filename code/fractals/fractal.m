% Code by Isabel Beach 
% Find the convergence speed of complex points wrt functionFractal.

% Options -----------------------------------------------------------------
% fractalType: number determining
%       1: make the Julia Set
%       2: make the Mandelbrot Set
% convergeType: number determining how to measure convergence.
%       1: measure using the standard complex norm.
%       2: measure using the box norm.
% colorType: number determining how to color the set.
%       1: color by convergence speed mod 256.
%       2: color by convergence speed mod 2.
%       3: color by convergence speed.
% displayImage: logical determining if you want to show a figure with the image.
% saveImage: logical determining if you want to save a png of the image.
% filename: string of desired filename (excluding file type extension)
% convThresh: real number giving maximum value of an iterated point before
%             it is considered to have escaped to infinity
% itersMax: maximum allowed number of iteration steps 
% xRes: number of pixels per horizontal line.
% yRes: number of pixels per vertical line.
% xCenter: real number giving horizontal center point of the image in the complex plane.
% yCenter: real number giving vertical center point of the image in the complex plane.
% xSize: real number giving maximum horizontal distance from center point of the image
% ySize: real number giving maximum vertical distance from center point of the image

fractalType = 2;
convergeType = 1;
colorType = 3;
displayImage = 1;
saveImage = 1;
filename = 'x';
imageColormap = hot(256);
convThresh = 100;
itersMax = 256;
xRes = 500;
yRes = 500;
xCenter = -0.50;
yCenter = 0;
xSize = 1.8;
ySize = 1.8;
param = 0.05 - 0.08*1j;

% Code --------------------------------------------------------------------

xRange = linspace(xCenter - xSize, xCenter + xSize, xRes);
yRange = linspace(yCenter - ySize, yCenter + ySize, yRes);
[xMesh, yMesh] = meshgrid(xRange, yRange);
z = xMesh + 1j.*yMesh;

convTime = getConvTime(z, convThresh, itersMax, convergeType, fractalType, param);

if displayImage || saveImage
    if colorType == 2
        zColors = convTime;
        isOdd = mod(convTime, 2) == 1;
        zColors(isOdd) = 2;
        zColors(~isOdd) = 1;
    elseif colorType == 1
        zColors = mod(convTime, 256) + 1;
    else
        zColors = convTime/max(max(convTime))*256;
    end
    if displayImage
        figure();
    else
        figure('visible', 'off');
    end
    clf();
    colormap(imageColormap);
    mandelbrot = pcolor(xMesh, yMesh, zColors);
    mandelbrot.EdgeColor = 'none';
    if saveImage
        ax = gca;
        exportgraphics(ax, [filename, '.png']) 
    end
end

function zOut = fractalFunction(z, constants)
    % Evaluates the desired function on complex points.
    % z: matrix of complex numbers.
    % zOut:matrix of complex numbers same size as z

	zOut = z.^2 + constants;

end

function [convTime, zNew] = getConvTime(z, convThresh, itersMax, convergeType, fractalType, param)
    % Check if complex points in z converge or diverge under the iterated map
    % defined in the function fractalFunction. Returns a matrix the same
    % size as z containing the number of time steps each point took to
    % diverge (or itersMax, if the point did not converge in the allotted
    % time). Also returns the final points obtained by the iteration.
    % ----------------------------------------------
    % Input:
    % z: matrix of complex numbers.
    % convThresh: threshhold above which values are considered to diverge
    %             to infinity under julia function
    % itersMax: max # of times to iterate julia function
    % convergeType: number determining how to measure convergence.
    %       1: measure using the standard complex norm.
    %       2: measure using the box norm.
    % Output:
    % convTime: real matrix same size as z counting how long it took
    %           for each point in z to diverge
    % zNew: matrix of complex numbers same size as z, containing the final 
    %       values obtained by applying the julia function until
    %       divergence.

    
    if fractalType == 1
        zNew = z;
    else
        zNew = zeros(size(z));
    end
    convTime = zeros(size(zNew));
    isConverging = ones(size(zNew));
    iters = 0;
    while iters < itersMax && any(any(isConverging))
        if convergeType == 1
            isConverging = abs(zNew) < convThresh;
        else
            isConverging = and(abs(real(zNew)) < convThresh/2, abs(imag(zNew)) < convThresh/2);
        end
        if fractalType == 1
            zNew(isConverging) = fractalFunction(zNew(isConverging), param);
        else
            zNew(isConverging) = fractalFunction(zNew(isConverging), z(isConverging));
        end
        convTime(isConverging) = convTime(isConverging) + 1;
        iters = iters + 1;
    end
end