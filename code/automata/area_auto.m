clear all;
final = false;

yLength = 300;
xLength = 300;
tLength = 150;

num_values = 5;
possible_values = 0:9;
colormap_pick = hot(num_values);

% rule_list = [0;1];
% for i = 1:9
%     rule_list_new = repmat(rule_list,2,1);
%     add_on = [zeros(numel(rule_list(:,1)),1);ones(numel(rule_list(:,1)),1)];
%     rule_list = [rule_list_new, add_on];
% end

tick = 0;
for rule = [0,1,0,1,1,1,1,1,1,1]'
    tick = tick + 1;
    pic = zeros(xLength,yLength,tLength);
    pic(:,:,1) = randi(0:1,[xLength,yLength,1]);
    
    filename = ['rule_',sprintf('%d', rule')];
    print_pic = pic(:,:,1)+1;
    if ~final
        imwrite(print_pic, colormap_pick, [filename,'.gif'], 'gif', 'Loopcount',inf); 
    end
    
    for t = 2:tLength
        print_pic = zeros(xLength,yLength);
        for y = 1:yLength
            for x = 1:xLength
                sum_out = neighbour_sum(pic,x,y,t);
                for v = 1:numel(possible_values)
                    if sum_out == possible_values(v)
                        pic(x,y,t) = rule(v);
                        break;
                    end
                end
                if pic(x,y,t) ~= pic(x,y,t-1)
                    print_pic(x,y) = pic(x,y,t)+3;
                else
                    print_pic(x,y) = pic(x,y,t)+1;
                end
            end
        end
        if ~final
            imwrite(print_pic, colormap_pick, [filename,'.gif'], 'gif','WriteMode', 'append', 'DelayTime',0.001);
            disp(['Frame ', num2str(t), ' saved.']);
        end
    end
    if final
        imwrite(print_pic, colormap_pick, [filename,'.png'], 'png');   
        disp(['Rule ', num2str(tick), ' saved.']);
    end
end

function sum_out = neighbour_sum(input,x,y,t)
    sum_out = input(x,y,t-1);
    if x > 2
        sum_out = sum_out + input(x-1,y,t-1);
        if y > 2
            sum_out = sum_out + input(x-1,y-1,t-1);
            sum_out = sum_out + input(x,y-1,t-1);
        else
            sum_out = sum_out + sum(input(x-1,end,t-1));
            sum_out = sum_out + sum(input(x,end,t-1));
        end
        if y < size(input,2)
            sum_out = sum_out + input(x-1,y+1,t-1);
            sum_out = sum_out + input(x,y+1,t-1);
        else
            sum_out = sum_out + input(x-1,1,t-1);
            sum_out = sum_out + input(x,1,t-1);
        end
    else
        sum_out = sum_out + input(end,y,t-1);
        if y > 2
            sum_out = sum_out + input(end,y-1,t-1);
            sum_out = sum_out + input(x,y-1,t-1);
        else
            sum_out = sum_out + input(end,end,t-1);
            sum_out = sum_out + input(x,end,t-1);
        end
        if y < size(input,2)
            sum_out = sum_out + input(end,y+1,t-1);
            sum_out = sum_out + input(x,y+1,t-1);
        else
            sum_out = sum_out + input(end,1,t-1);
            sum_out = sum_out + input(x,1,t-1);
        end
    end
    if x < size(input,1)
        sum_out = sum_out + input(x+1,y,t-1);
        if y > 2
            sum_out = sum_out + input(x+1,y-1,t-1);
        else
            sum_out = sum_out + input(x+1,end,t-1);
        end
        if y < size(input,2)
            sum_out = sum_out + input(x+1,y+1,t-1);
        else
            sum_out = sum_out + input(x+1,1,t-1);
        end
    else
        sum_out = sum_out + input(1,y,t-1);
        if y > 2
            sum_out = sum_out + input(1,y-1,t-1);
        else
            sum_out = sum_out + input(1,end,t-1);
        end
        if y < size(input,2)
            sum_out = sum_out + input(1,y+1,t-1);
        else
            sum_out = sum_out + input(1,1,t-1);
        end
    end
end