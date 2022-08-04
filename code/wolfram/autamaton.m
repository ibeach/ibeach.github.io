% Wolfram Automaton -- Code by Isabel Beach
% Given a rule for an elementary cellular automaton (in the Wolfram naming
% convention, i.e. a 1-by-8 vector of zeros and ones) and an initial
% condition for some number of cells, this runs the automaton for the
% desired number of generations and outputs the corresponding image.
% -------------------------------------------------------------------------

% Parameters --------------------------------------------------------------
% displayImage: logical to determine if you want to display the output.
% saveImage: logical to determine if you want to save a copy of the output.
% cellNum: integer number of cells of the automaton.
% generationNum: integer number of generations to run the automaton.
% rule: 1-by-8 integer vector determining the automaton's rule.
% initialConditions: 1-by-cellNum integer vector of the automaton's initial state.
% filename: string for the image filename (including the file suffix).
% imageColor0: 1-by-3 RGB vector giving the colour for the zero-valued cells.
% imageColor1: 1-by-3 RGB vector giving the colour for the one-valued cells.

displayImage = 1;
saveImage = 1;
cellNum = 100;
generationNum = 100;
rule = [1, 0, 0, 1, 0, 1, 1, 1];
initialConditions = zeros(1, cellNum);
filename = 'automaton4.jpg';
imageColor0 = [0.5, 0, 0];
imageColor1 = [1, 0, 0];

% Code --------------------------------------------------------------------

automatonOutput = runAutomaton(rule, cellNum, generationNum, initialConditions);
if displayImage
    imshow(automatonOutput, 'Colormap', [imageColor0; imageColor1]);
end
if saveImage
    imwrite(automatonOutput + 1, [imageColor0; imageColor1], filename);
end

function automatonOutput = runAutomaton(rule, cellNum, generationNum, initialConditions)
% nya
% rule: 1-by-8 integer vector determining the automaton's rule.
% cellNum: integer number of cells of the automaton.
% generationNum: integer number of generations to run the automaton.
% initialConditions: 1-by-cellNum integer vector of the automaton's initial state.
% automatonOutput: generationNum-by-cellNum real matrix

    automatonOutput = zeros(generationNum, cellNum + 2);    
    automatonOutput(1, :) = [0, initialConditions, 0];
    for iGen = 2:generationNum
        prevGen = automatonOutput(iGen - 1, :);
        newGen = prevGen;
        for iCell = 2:(cellNum - 1)
            if prevGen(iCell - 1) == 1 
                if prevGen(iCell) == 1
                    if prevGen(iCell + 1) == 1
                        newGen(iCell) = rule(1);
                    else
                        newGen(iCell) = rule(2);
                    end
                else
                    if prevGen(iCell + 1) == 1
                        newGen(iCell) = rule(3);
                    else
                        newGen(iCell) = rule(4);
                    end
                end
            else
                if prevGen(iCell) == 1
                    if prevGen(iCell + 1) == 1
                        newGen(iCell) = rule(5);
                    else
                        newGen(iCell) = rule(6);
                    end
                else
                    if prevGen(iCell + 1) == 1
                        newGen(iCell) = rule(7);
                    else
                        newGen(iCell) = rule(8);
                    end
                end
            end
        end
        automatonOutput(iGen, :) = newGen;
    end
    automatonOutput = automatonOutput(:, 2:(cellNum - 1));
end