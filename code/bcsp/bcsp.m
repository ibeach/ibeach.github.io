% Code by Isabel Beach 
% Applies the Birkhoff curve shortening process to a curve.
%
% Parameters --------------------------------------------------------------
% iterations: number of times to run the Birkhoff process.
% delta: ideal spacing between sampled points in the curve at each step.
% curveResMin: minimum number of points to sample from the curve at each 
%              step (even if the spacing is less than delta).
% curveResInitial: number of sampled points in the initial curve.
% boxSize: size of plot. The area graphed will be [-boxSize, boxSize]^2 in 
%          cartesian coordinates. 

iterations = 300;
delta = 1/20;
curveResMin = 15;
curveResInitial = 1000;
boxSize = 1.5;

% Code --------------------------------------------------------------------

% create initial curve
theta = linspace(0, 2*pi, curveResInitial);
theta(end) = [];
x = (sin(5*theta).^2+0.1).*cos(theta);
y = (sin(5*theta).^2+0.1).*sin(theta);

for i = 1:iterations+1
    % plot curve
    figure(1);
    plot(x([1:end, 1]), y([1:end, 1]), '-k');
    axis([-boxSize boxSize -boxSize boxSize]);
    % apply BCSP
    [x, y] = birkhoff(x, y, delta, curveResMin);
    [x, y] = getMidpoints(x, y);
end

function [xNew, yNew] = birkhoff(x, y, idealDelta, minCurveRes)
    % Apply one iteration of the birkhoff process to the curve (x, y).
    % Since geodesics in the plane are given by line segments, we resample
    % the initial curve as (xNew, yNew) and assume consecutive points are
    % connected by straight line segments.
    % x: real vector.
    % y: real vector the same size as x.
    % idealDelta: real number.
    % minCurveRes: real number.
    % xNew: real vector the same size as x.
    % yNew: real vector the same size as x.
    
    curveLength = sum(sqrt(diff(x).^2 + diff(y).^2));
    segmentNum = max(ceil(curveLength/idealDelta), minCurveRes - 1);
    delta = curveLength/segmentNum;
    xNew = x(1);
    yNew = y(1);    
    ptCurrent = [x(1), y(1)];
    ptNext = [x(2), y(2)];
    nextIndex = 3;
    
    for i = 1:segmentNum
        distanceRemaining = delta;
        while distanceRemaining > 1e-15
            forwardStepLength = norm(ptNext - ptCurrent);
            if forwardStepLength < distanceRemaining
                ptCurrent = ptNext;
                ptNext = [x(nextIndex), y(nextIndex)];
                nextIndex = nextIndex + 1;
                if nextIndex == numel(x)
                    nextIndex = 1;
                end
            else
                segment =  ptNext - ptCurrent; 
                ptCurrent = ptCurrent + distanceRemaining.*segment/norm(segment);
                xNew(end + 1) = ptCurrent(1);
                yNew(end + 1) = ptCurrent(2);
            end
            distanceRemaining = distanceRemaining - forwardStepLength;
        end
    end
end

function [xNew, yNew] = getMidpoints(x, y)
    % Returns the midpoints of consecutive points (in a linear sense) given
    % by (x, y).
    % x: real vector.
    % y: real vector the same size as x.
    % xNew: real vector the same size as x.
    % yNew: real vector the same size as x.

    forwardIndex = [2:numel(x), 1];
    xNew = (x(forwardIndex) + x)/2;
    yNew = (y(forwardIndex) + y)/2;
end