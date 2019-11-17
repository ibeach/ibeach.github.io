% YOU NEED THE FUNCTION UNIQUECELL
% I USED THIS: https://www.mathworks.com/matlabcentral/fileexchange/31718-unique-elements-in-cell-array

clear all;

custom_rule = 0;
dragon = 0;
double_dragon = 0;
ter_dragon = 0;
blob = 0;
plant = 0; % branching doesn't quite work
plant_2 = 0;
iterate_all_one_rules = 1;
iterate_all_two_rules = 0;

iters_max = 15;
iters = 0;
heading = [1;0];
rule_depth = 4;

if dragon
    turn_angle = pi/2;
    init_char = 'FX';
    fig_name = 'dragon';
elseif ter_dragon
    turn_angle = 2*pi/3;
    init_char = 'F';
    fig_name = 'ter_dragon';
elseif double_dragon
    turn_angle = pi/2;
    init_char = 'FX+FX+';
    fig_name = 'double_dragon';
elseif blob
    turn_angle = pi/2;
    init_char = 'F';
    fig_name = 'blob';
elseif plant
    turn_angle = pi/15;
    init_char = 'F';
    fig_name = 'plant';
elseif plant_2
    turn_angle = pi/15;
    init_char = 'X';
    fig_name = 'plant_2';
elseif iterate_all_one_rules
    turn_angle = pi/2;
elseif iterate_all_two_rules
    turn_angle = pi/2;
elseif custom_rule
    turn_angle = pi/2;
    init_char = 'FX';
    fig_name = 'test';
end

if ~iterate_all_one_rules && ~iterate_all_two_rules
    while iters < iters_max && numel(init_char) < 2000000
        if dragon
            init_char = strrep(init_char,'X','X+ZF+');
            init_char = strrep(init_char,'Y','-FX-Y');
            init_char = strrep(init_char,'Z','Y');
        elseif ter_dragon
            init_char = strrep(init_char,'F','F+F-F');
        elseif double_dragon
            init_char = strrep(init_char,'X','X+ZF');
            init_char = strrep(init_char,'Y','FX-Y');
            init_char = strrep(init_char,'Z','Y');
        elseif blob
            init_char = strrep(init_char,'F','F+F-F+');
        elseif plant
            init_char = strrep(init_char,'F','FF-[-F+F+F]+[+F-F-F]');
        elseif plant_2
            init_char = strrep(init_char,'F','FF');
            init_char = strrep(init_char,'X','F[+X]F[-X]+X-X');
        elseif custom_rule
%             rule1 = 'XYF' ; %replaces x
%             rule2 = 'X-F' ; %replaces y
            rule1 = 'FXY' ; %replaces x
            rule2 = 'X+F' ; %replaces y
            temp_string = strrep(rule1,'Y','_');
            init_char = strrep(init_char,'X',temp_string);
            init_char = strrep(init_char,'Y',rule2);
            init_char = strrep(init_char,'_','Y');
        end
        iters = iters + 1;
    end
    init_char_list = init_char;
else
    % get all rules
    if iterate_all_two_rules
        string_list = {'F','X','Y'};
    else
        string_list = {'F'};
    end
    for i = 1:rule_depth
        current_words = numel(string_list);
        stopping = min([current_words, 200000]);
        string_list_new = string_list;
        index = 1;
        for j = 1:stopping
            word = string_list{j};
            if iterate_all_two_rules
                letters = ['F';'X';'Y';'-';'+'];
            else
                letters = ['F';'-';'+'];
            end
            for n = 1:numel(letters)
                string_list_new{end+1} = [word,letters(n)];
            end
            index = index + 1;
        end
        string_list = string_list_new;
    end
    disp('Rules calculated successfully.');
    
    % apply all
    init_char_list = cell(1,numel(string_list));
    if iterate_all_two_rules
        for n = 1:(numel(string_list)*(numel(string_list)-1)/2)
                init_char_list(n) = {'FX'};
        end
    else
        for n = 1:numel(string_list)
            init_char_list(n) = {'F'};
        end
    end
    
    fig_name = init_char_list;
    
    if iterate_all_two_rules
        string_index = 1;
        for string_num_1 = 1:numel(string_list)
            for string_num_2 = string_num_1+1:numel(string_list)
                iters = 0;
                while iters < iters_max && numel(init_char_list{string_index}) < 2000000
                    temp_string = strrep(string_list{string_num_1},'Y','_');
                    init_char_list{string_index} = strrep(init_char_list{string_index},'X',temp_string);
                    init_char_list{string_index} = strrep(init_char_list{string_index},'Y',string_list{string_num_2});
                    init_char_list{string_index} = strrep(init_char_list{string_index},'_','Y');
                    iters = iters + 1;
                end
                string_index = string_index +1;
                fig_name{string_index} = ['X_',string_list{string_num_1},...
                                         '_Y_',string_list{string_num_2},...
                                         '_',num2str(turn_angle),...
                                         '_',num2str(iters_max),'.png'];
            end
        end
    else
        for string_num = 1:numel(string_list)
            iters = 0;
            while iters < iters_max && numel(init_char_list{string_num}) < 2000000
                init_char_list{string_num} = strrep(init_char_list{string_num},'F',string_list{string_num});
                iters = iters + 1;
            end
            fig_name{string_num} = ['F_',string_list{string_num},...
                                     '_',num2str(turn_angle),...
                                     '_',num2str(iters_max),'.png'];
        end
    end
end

if iscell(init_char_list)
    [init_char_list,name_index] = uniquecell(init_char_list);
    fig_name = fig_name(name_index);
    num_rules = numel(init_char_list);
else
    num_rules = 1;
end

for init_char_num = 1:num_rules
    
    if iscell(init_char_list)
        init_char = init_char_list{init_char_num};
        fig_name_char = fig_name{init_char_num};
    else
        init_char = init_char_list;
        fig_name_char = fig_name;
    end
    
    if contains(init_char(2:end),'F')... % only care about rules that actually do things
    &&(contains(init_char(2:end),'-')||contains(init_char(2:end),'+')) 
        figure('visible','off');
        box off
        axis off
        hold on;
        draw_branch(init_char,heading,turn_angle,0,0);

        ax = gca;
        outerpos = ax.OuterPosition;
        ti = ax.TightInset; 
        left = outerpos(1) + ti(1);
        bottom = outerpos(2) + ti(2);
        ax_width = outerpos(3) - ti(1) - ti(3);
        ax_height = outerpos(4) - ti(2) - ti(4);
        ax.Position = [left bottom ax_width ax_height];
        ax.XTickMode = 'manual';
        ax.YTickMode = 'manual';
        ax.ZTickMode = 'manual';
        set(gca,'Visible','off')
        fig = gcf;
        fig.PaperUnits = 'inches';
        fig.PaperPosition = [0 0 4 4];

        print(gcf, fig_name_char, '-dpng', '-r300');
        disp(['File ', fig_name_char, ' saved.']);
    end
end

function draw_branch(word,heading_in,turn_angle,x_in,y_in)

    heading = heading_in;
    x = x_in;
    y = y_in;
    
%     heading = [0;1];
    for character = 1:numel(word)
        if word(character) == 'F'
            x(end+1) = x(end) + heading(1);
            y(end+1) = y(end) + heading(2);
        elseif word(character) == '-'
            heading = [cos(turn_angle),-sin(turn_angle);sin(turn_angle),cos(turn_angle)]*heading;
        elseif word(character) == '+'
            heading = [cos(-turn_angle),-sin(-turn_angle);sin(-turn_angle),cos(-turn_angle)]*heading;
        elseif word(character) == '['
            open_bracket = 1;
            close_bracket = 0;
            for sub_character = character+1:numel(word)
                if word(sub_character) == '['
                    open_bracket = open_bracket + 1;
                elseif word(sub_character) == ']'
                    close_bracket = close_bracket + 1;
                end
                if close_bracket == open_bracket
                    sub_word = word(character+1:sub_character-1);
                    break;
                end
            end
            draw_branch(sub_word,heading,turn_angle,x(end),y(end));
        end
    end
    plot(x,y)
end