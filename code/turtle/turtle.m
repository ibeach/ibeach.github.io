% Turtle Graphics -- Code by Isabel Beach
% Plot the turtle curve determined by the options below. The vocabulary is
%     'F': go forward.
%     '-': turn left by a fixed number of degrees.
%     '+':  turn right by a fixed number of degrees.
%     'X', 'Y': do nothing.
% Warning: This code (especially the plotting portion) may be extremely 
% slow for sufficiently long curves. 
% -------------------------------------------------------------------------

% Options -----------------------------------------------------------------
% itersMax: maximum number of times to apply the string replacement rule.
% wordMax: maximum allowed length of the string.
% turnAngle: angle in radians to turn left/right.
% heading: 2-by-1 vector describing initial direction of the turtle.
% word: string of initial word.
% rule: 1-by-3 cell containing the string replacement rule. 
%       rule{1}: string to replace 'F' with.
%       rule{2}: string to replace 'X' with.
%       rule{3}: string to replace 'Y' with.
% lineColor: 1-by-3 RGB vector of the curve color.

itersMax = 50;
wordMax = 1e5;
turnAngle = pi/2;
heading = [0; 1];
word = 'FX';
rule =  {'F', 'X+YF+', '-FX-Y'};
lineColor = [0, 0, 0];

% Code --------------------------------------------------------------------

word = getTurtleString(word, rule, itersMax, wordMax);
[x,y] = getTurtleCurve(word, heading, turnAngle);
figure(1); 
box off
axis off
hold on;
plot(x, y, 'Color', lineColor)

function wordNew = getTurtleString(word, rule, itersMax, wordMax)
    % Apply the string replacement rule to word.
    % itersMax: number of time to apply the string replacement rule.
    % wordMax: maximum allowed length of the string.
    % word: string of initial word.
    % rule: 1-by-3 cell containing the string replacement rule. 
    %       rule{1}: string to replace 'F' with.
    %       rule{2}: string to replace 'X' with.
    %       rule{3}: string to replace 'Y' with.
    % wordNew: output string.

    ruleF = rule{1}; %replaces F
    ruleX = rule{2}; %replaces X
    ruleY = rule{3}; %replaces Y
    iters = 1;
    wordNew = word;
    while iters < itersMax && numel(wordNew) < wordMax
        % replace temporarily so we dont overwrite
        wordNew = strrep(wordNew, 'F', 'f');
        wordNew = strrep(wordNew, 'Y', 'y');
        wordNew = strrep(wordNew, 'X', 'x');
        % apply rules
        wordNew = strrep(wordNew, 'f', ruleF);
        wordNew = strrep(wordNew, 'x', ruleX);
        wordNew = strrep(wordNew, 'y', ruleY);
        % increment
        iters = iters + 1;
    end
end

function [x, y] = getTurtleCurve(word, headingInit, turnAngle)
    % Return the (x, y)-coordinates of the curve determined by giving the
    % instructions in word to the turtle with initial heading headingInit
    % and turning angle turnAngle.
    % word: string of instructions for the curve.
    % headingInit: initial direction of the turtle.
    % turnAngle: angle in radians to turn left/right.
    % x: real vector of x-coordinates of curve.
    % y: real vector of y-coordinates of curve.

    headingNew = headingInit;
    wordLength = numel(word);
    x = 0;
    y = 0;
    for character = 1:wordLength
        if word(character) == 'F'
            % go forward
            x(end+1) = x(end) + headingNew(1);
            y(end+1) = y(end) + headingNew(2);
        elseif word(character) == '-'
            % turn left
            headingNew = [cos(turnAngle), -sin(turnAngle); ...
                          sin(turnAngle), cos(turnAngle)]*headingNew;
        elseif word(character) == '+'
            % turn right
            headingNew = [cos(-turnAngle), -sin(-turnAngle); ...
                          sin(-turnAngle), cos(-turnAngle)]*headingNew;        
        elseif word(character) == 'X' || word(character) == 'Y' 
            % do nothing
        else
            warning('Invalid character.');
        end
    end
end