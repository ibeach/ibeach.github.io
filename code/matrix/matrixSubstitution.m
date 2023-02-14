% Code by Isabel Beach
% Display a matrix substitution pattern.

% Options -----------------------------------------------------------------
% generationNum: real number of how many iterations to complete
% initialTile: real matrix determining initial conditions
% matrixList: real matrix determining replacement rule.

generationNum = 10;
initialTile = 1;
matrixList = [1, 15, 1, 1; ... 
              7, 15, 10, 15; ...
              4, 14, 6, 5; ...
              2, 2, 6, 14; ...
              13, 4, 13, 13; ...
              6, 3, 8, 14; ...
              4, 13, 3, 10; ...
              5, 2, 3, 9; ...
              9, 8, 12, 11; ...
              8, 4, 9, 4; ...
              6, 10, 10, 5; ...
              8, 2, 11, 11; ...
              14, 1, 3, 12; ...
              7, 9, 3, 6; ...
              1, 7, 7, 1;
             ];    % rule 350     
         
% Code --------------------------------------------------------------------
tiling = getTiling(initialTile, matrixList, generationNum);
imagesc(tiling);
axis off;

function tileList = getTiling(tileListInput, matrixList, generationNum)
    % meow
    % tileListInput: real matrix determining initial conditions.
    % generationNum: real number of how many iterations to complete.
    % matrixList: real matrix determining the replacement rule.
    % tileList: real matrix .

    tileList = tileListInput;
    repSize = sqrt(numel(matrixList(1, :)));
    for iGen = 1:generationNum
        tileSize = size(tileList);
        tileListNew = zeros(repSize*tileSize);
        for i = 1:tileSize(1)
            for j = 1:tileSize(2)
                replaceWithMatrix = matrixList(tileList(i, j), :);
                newMatrix = reshape(replaceWithMatrix, [repSize, repSize]);
                tileListNew(repSize*(i - 1) + 1:repSize*i, ...
                            repSize*(j - 1) + 1:repSize*j) = newMatrix;
            end
        end
        tileList = tileListNew;
    end
end