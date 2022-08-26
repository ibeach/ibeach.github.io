% code by Isabel Beach
% Display your chosen hyperbolic tiling.
% 
% Paramaters --------------------------------------------------------------
% p: Schlafli symbol p number. Must be >= 3.
% q: Schlafli symbol q range. Must be >= 3.
% wordLength: maximum number of maps (length of word) to apply to each tile.
% geoRes: number of points to sample per polygon edge.
% lineWidth: real number giving line width for tile plot.

p = 4; 
q = 8;
wordLength = 5;
geoRes = 500;
lineWidth = 1.5; 

% Code --------------------------------------------------------------------

% get data
tiles = getTiling(p, q, wordLength, geoRes);

% make plot
figure(1);
clf(1)
axis off;
hold on;
plot(cos(linspace(0, 2*pi, 300)),sin(linspace(0, 2*pi, 300)),'-k', 'LineWidth', lineWidth)
for i = 1:numel(tiles(:,1))
    plot(real(tiles(i, :)), imag(tiles(i, :)), '-k', 'LineWidth', lineWidth)
end

function pts = getPolyPerimeter(vertexList, res)
    % Return complex vector of points along perimeter of a given polygon.
    % vertexList: complex vector of vertices of a polygon
    % res: number of points to sample per edge of polygon
    % pts: complex vector of length numel(vertexList)*res of points along 
    %      perimeter of polygon

    pts = [];
    for j = 1:numel(vertexList)-1
        pt1 = vertexList(j);
        pt2 = vertexList(j + 1);
        geoSeg = getGeoDisk([pt1, pt2], res);
        if norm(geoSeg(end) - pt2) > 1e-10
            geoSeg = fliplr(geoSeg);
        end
        pts = [pts, geoSeg];
    end
end

function [a, b, c, d] = getCircleReflection(center, radius)
    % Return co-efficients of Mobius map determining reflection across a
    % given circle.
    % center: complex number determining center of circle.
    % radius: real number determining radius of circle.
    % a: complex number.
    % b: complex number.
    % c: complex number.
    % d: complex number.

    if isnan(radius)
        % reflection across line
        if isnan(center)
            %vertical radial line
            a = -1;
            b = 0;
            c = 0;
            d = 1;
        else
            if center < 1e-15
            %horizontal radial line
                a = 1;
                b = 0;
                c = 0;
                d = 1;
            else
            %skew radial line
                ang = atan(center);
                a = conj(exp(-1j*ang)).*exp(1j*ang);
                b = 0;
                c = 0;
                d = 1;
            end
        end
    else
        % reflection across circle
        a = center;
        b = radius^2 - conj(center)*center;
        c = 1;
        d = -conj(center);
    end
end

function [z, center, r] = getGeoDisk(pts, res)
    % Return points on the geodesic connecting the two points in the unit
    % disk determined by pts. Also returns the center point and radius
    % determining the circle underlying the geodesic arc.
    % pts: complex vector of length 2 of points in the unit disk.
    % res: real number of points to sample on geodesic.
    % z: complex vector of length res of points on geodesic.
    % center: complex number determining center of circle.
    % r: real number determining radius of circle.

    if abs(imag(pts(1)/pts(2))) < 1e-10 || any(pts == 0)
        % colinear w/ zero
        r = NaN;
        if abs(real(pts(1)-pts(2))) < 1e-15
            % vertical line
            center = NaN;
            y = linspace(imag(pts(1)), imag(pts(2)), res);
            z = real(pts(1)) + 1j.*y;
        else
            %other line
            x = linspace(real(pts(1)), real(pts(2)), res);
            slope = imag(pts(2) - pts(1))/real(pts(2) - pts(1));
            center = slope;
            z = x + 1j.*(slope.*x);
        end
    else
        ptInv = conj(1/pts(2));        
        if norm(pts(1)) > 1-1e-12 && norm(pts(2)) > 1-1e-12 
            % both pts on bdy, need to use tangent line
            slope1 = -real(pts(1))/imag(pts(1)); % tangent at pt1
            slope2 = -real(pts(2))/imag(pts(2)); % tangent at pt2
            midp1 = pts(1);
            midp2 = pts(2);
            b1 = imag(midp1) - slope1*real(midp1);
            b2 = imag(midp2) - slope2*real(midp2);
        else
            if norm(pts(2)) > 1-1e-15 
                ptInv = conj(1/pts(1));
            end
            slope1 = -real(pts(1) - ptInv)/imag(pts(1) - ptInv);
            slope2 = -real(pts(2) - pts(1))/imag(pts(2) - pts(1));
            midp1 = (pts(1) + ptInv)/2;
            midp2 = (pts(1) + pts(2))/2;
            b1 = imag(midp1) - slope1*real(midp1);
            b2 = imag(midp2) - slope2*real(midp2);
        end
        if abs(slope1) > 1e12 || isinf(slope1)
            xCenter = real(midp1);
            yCenter = slope2*xCenter + b2;
        elseif abs(slope2) > 1e12 || isinf(slope2)
            xCenter = real(midp2);
            yCenter = slope1*xCenter + b1;
        else
            b1 = imag(midp1) - slope1*real(midp1);
            b2 = imag(midp2) - slope2*real(midp2);
            xCenter = (b1 - b2)/(slope2 - slope1);
            yCenter = slope1*xCenter + b1;
        end
        center = xCenter + 1j.*yCenter;
        r = norm(xCenter + 1j*yCenter - pts(1));
        angles = sort(angle(pts - center));
        if angles(2) - angles(1) > pi 
            if angles(1) == -pi
                theta1 = -pi;
                theta2 = linspace(angles(2), pi, res - 1);
            else
                if angles(2) == pi
                    theta1 = linspace(-pi, angles(1), res -1);
                    theta2 = pi;
                else
                    theta1 = linspace( -pi, angles(1), res/2);
                    theta2 = linspace(angles(2), pi, res/2);
                end
            end
            theta = [fliplr(theta1), fliplr(theta2)];
        else
            theta = linspace(angles(2), angles(1), res);
        end
        z = r.*exp(1j.*theta) + center ;
    end
end

function words = getWords(letterNum, wordLength)
    % Return all words of length at most depth on mapNum distinct letters.
    % words are organized by length in a cell structure.
    % mapNum: number of letters.
    % depth: maximum length of word to return.
    % words: vector of cells of length depth. The ith cell contains a
    %        matrix whose columns are all words of length i.
    
    words = cell(1, wordLength);
    words{1} = 1:letterNum;
    for i = 2:wordLength
        prevWordList = words{i - 1};
        addon = repmat(1:letterNum, size(prevWordList, 2), 1);
        wordNew = [repmat(prevWordList, 1, letterNum); addon(:)'];
        words{i} = wordNew;
    end
end

function mapsOut = getTilingMaps(p, q, polyIn, wordLength)
    % Return matrix of coefficients for mobius maps determining the mappings
    % to apply to the initial tile polyIn to produce the hyperbolic tiling 
    % corresponding to Schlafli symbol (p, q).
    % p: Schlafli symbol p number. Must be >= 3.
    % q: Schlafli symbol q range. Must be >= 3.
    % polyIn: complex vector containing list of vertices of a polygon.
    % wordLength: maximum number of maps to apply to initial tile.
    % mapsOut: complex matrix of size 4-by-X corresponding to mobius maps.
    
    % get reflection maps for each side of the polygon
    a = zeros(p, 1);
    b = zeros(p, 1);
    c = zeros(p, 1);
    d = zeros(p, 1);
    for vertex = 1:p
        flip = polyIn([vertex, vertex + 1]);
        [~, x, r] = getGeoDisk(flip, 2);
        [a1, b1, c1, d1] = getCircleReflection(x, r);
        a(vertex) = a1;
        b(vertex) = b1;
        c(vertex) = c1;
        d(vertex) = d1;
    end

    % get words
    wordMasterlist = getWords(p, wordLength);
    
    % convert words to mobius maps
    mapsOut = zeros(1, 4);
    index = 1;
    for k = 1:wordLength
        wordList = wordMasterlist{k};
        for j = 1:size(wordList, 2)
            map = [1, 0; 0, 1];
            for m = wordList(:, j)'
                map = map*[a(m), b(m); c(m), d(m)];
            end
            mapsOut(index, :) = [map(1, 1), map(1,2), map(2,1), map(2, 2)];
            index = index + 1;
        end
    end
end

function tiles = getTiling(p, q, depth, res)
    % Return matrix of points representing perimeters of tiles in the
    % hyperbolic tiling defined by Schlafli symbol (p, q).
    % p: Schlafli symbol p number. Must be >= 3.
    % q: Schlafli symbol q number. Must be >= 3.
    % depth: maximum length of word to return.
    % res: real number of points to sample on geodesic.
    % tiles: complex matrix of size p*res-by-X of points along perimeter 
    %        of each tile.
       
    % Generate Initial Tile / Fundamental Domain
    if isinf(q)
        rr = 1;
    else
        rr = sqrt(( cos(pi/p + pi/q)*cos(pi/q) )...
            /( sin(2*pi/q)*sin(pi/p)+cos(pi/p + pi/q)*cos(pi/q) ));
    end
    theta = linspace(0, 2*pi, p+1)';
    polyVerts = rr.*exp(theta*1j);
    
    % Generate Tiling    
    maps = getTilingMaps(p, q, polyVerts, depth);
    [~, validMapsIndex] = uniquetol([real(maps), imag(maps)], 1e-15, 'ByRows', true);
    validMaps = maps(validMapsIndex, :);
    polyEdges = getPolyPerimeter(polyVerts, res);
    tiles = zeros(numel(validMaps(:, 1)), numel(polyEdges));
    for i = 1:numel(polyEdges)
        tiles(:,i) = (validMaps(:, 1).*polyEdges(i) + validMaps(:, 2))./ ...
                     (validMaps(:, 3).*polyEdges(i) + validMaps(:, 4));
    end
end