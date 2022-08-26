% Life-like Automata -- Code by Isabel Beach
% Simulate the automaton given by a particular rule for a provided initial
% state. 
% -------------------------------------------------------------------------

% Options -----------------------------------------------------------------
% generationNum: number giving number of time steps to run the simulation.
% xSize: number giving x-size of the simulation area.
% ySize:  number giving y-size of the simulation area.
% initialBoard: xSize-by-ySize real matrix giving initial conditions for the simulation
% rule: 2-by-1 cell representing the desired simulation rule. rule{1}
%       should be a real vector containing the numbers of neighbours which
%       will cause a given cell to turn on ("birth"), and rule{2} should be 
%       a real vector containing the number of neighbours which will cause 
%       a given cell to survive.
% isTorus: logical determining if board is torus or has boundary
% historyLength: number of past time steps for which to save plot data.
%                Must be at least 1 (corresponding to no saved history).
% colorMap: (historyLength+1)-by-3 real matrix of the desired colormap.

generationNum = 200;
xSize = 50;
ySize = 50;
initialBoard = getRandomBoard(0.1, xSize, ySize);
rule = {[3], [2, 3]};
isTorus = 1;
historyLength = 1;
imageMag = 1;
colorMap = bone(historyLength + 1);

% Code -----------------------------------------------------------------

board = zeros(historyLength, xSize, ySize);
board(end, :, :) = initialBoard;
figure(1);
clf(1);
drawnow;
for iGeneration = 1:generationNum
    [board, boardImageData] = getUpdatedBoard(rule, board, isTorus);
    boardImageData = repelem(boardImageData, imageMag, imageMag);
    imshow(boardImageData/max(max(boardImageData)), 'Colormap', colorMap);
end

function board = getRandomBoard(chanceOn, xSize, ySize)
    % Outputs a randomly seleted xSize-by-ySize real matrix board 
    % representing a possible simulation state.
    % chanceOn: chance (a number in the interval [0,1]) that a given cell is "on".
    % xSize: x-size of the simulation area.
    % ySize: y-size of the simulation area.
    % board: xSize-by-ySize real matrix.
    
    board = zeros(xSize, ySize);
    boardChance = rand(xSize, ySize);
    board(boardChance >= chanceOn) = 0;
    board(boardChance < chanceOn) = 1;
end

function neighborSum = getNeighborSum(board, isTorus)
    % Outputs a matrix neighborSum whose entry at (i,j) is the the sum of 
    % the 8 neighbouring entry values of entry (i,j) in the matrix board.
    % board: a real matrix.
    % isTorus: logical determining if board is torus or has boundary
    % neighborSum: a real matrix of the same size as board.

    if isTorus
        [xMax, yMax] = size(board);
        prevX = [xMax, 1:xMax-1];
        prevY = [yMax, 1:yMax-1];
        nextX = [2:xMax, 1];
        nextY = [2:yMax, 1];
        neighborSum = board(prevX, prevY) ... % top right
                    + board(:, prevY) ... % top center
                    + board(nextX, prevY) ... % top left
                    + board(prevX, :) ... % center right
                    + board(nextX, :) ... % center left
                    + board(prevX, nextY) ... % bottom right
                    + board(:, nextY) ... % bottom center
                    + board(nextX, nextY); % bottom left
    else        
        neighborSum = conv2(board, ones(3), 'same') - board;
    end
end

function boardNew = runLife(rule, board, isTorus)
    % Outputs a matrix boardNew corresponding to running the automaton for
    % one generation/time step to the initial state described by the matrix 
    % board.
    % rule: 2-by-1 cell of real vectors describing the rule of the automaton.
    % board: real matrix of initial simulation state.
    % isTorus: logical determining if board is torus or has boundary
    % boardNew: real matrix of the same size as board.

    boardNew = zeros(size(board));
    neighborSum = getNeighborSum(board, isTorus);
    for iBirth = rule{1}
        boardNew(neighborSum == iBirth) = 1;
    end
    for iSurvive = rule{2}
        isAliveCell = board == 1;
        isPossibleSurvivorCell = neighborSum == iSurvive;
        boardNew(and(isAliveCell, isPossibleSurvivorCell)) = 1;
    end
end

function [boardNew, boardNewImageData] = getUpdatedBoard(rule, board, isTorus)
    % Outputs an array boardNew corresponding to running the automaton for
    % one generation/time step. The data contained in board(1, :, :) is 
    % deleted, and boardNew(i, :, :) is given by board(i+1, :, :) except for
    % boardNew(end, :, :) which is given by applying the automaton to the 
    % initial state described by the matrix board(end, :, :). 
    % Also outputs a matrix boardNewImageData corresponding to the plot of
    % the new time step. This is calculated by summing the historical data
    % for each cell as recorded in boardNew.
    % rule: 2-by-1 cell of real vectors describing the rule of the automaton.
    % board: 3D real array. Each matrix board(i, :, :) should represent a
    %        simulation state.
    % boardNew: real array of the same size as board.
    % boardNewImageData: real matrix of the same size as board(1, :, :).
    
    boardNew = board;
    if size(board, 1) > 1
        boardNew(1:end-1,:, :) = boardNew(2:end,:, :);
        boardNew(end,:, :) = runLife(rule, squeeze(boardNew(end-1, :, :)), isTorus);
        boardNewImageData = squeeze(sum(boardNew, 1));
    else
        boardNew(1, :, :) = runLife(rule, squeeze(board), isTorus);
        boardNewImageData = squeeze(boardNew);
    end
end