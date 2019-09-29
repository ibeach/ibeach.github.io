yLength = 1000;
xLength = 1000;
start = randi(50,xLength,1);
rule_list = [0;1];
for i = 1:7
    rule_list_new = repmat(rule_list,2,1);
    add_on = [zeros(numel(rule_list(:,1)),1);ones(numel(rule_list(:,1)),1)];
    rule_list = [rule_list_new, add_on];
end

for rule = [1,0,0,1,0,1,1,0]'%rule_list'
    pic = zeros(xLength,yLength);
    pic(1,100) = 1;
    pic(1,:) = 1;
%     pic(pic > 1) = 0;
    for y = 2:yLength-1
        for x = 2:xLength-1
            if pic(x-1,y-1) == 1 && pic(x,y-1) == 1 && pic(x+1,y-1) == 1
                if rule(1) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            elseif pic(x-1,y-1) == 1 && pic(x,y-1) == 1 && pic(x+1,y-1) == 0
                if rule(2) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            elseif pic(x-1,y-1) == 1 && pic(x,y-1) == 0 && pic(x+1,y-1) == 1
                if rule(3) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            elseif pic(x-1,y-1) == 1 && pic(x,y-1) == 0 && pic(x+1,y-1) == 0
                if rule(4) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            elseif pic(x-1,y-1) == 0 && pic(x,y-1) == 1 && pic(x+1,y-1) == 1
                if rule(5) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            elseif pic(x-1,y-1) == 0 && pic(x,y-1) == 1 && pic(x+1,y-1) == 0
                if rule(6) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            elseif pic(x-1,y-1) == 0 && pic(x,y-1) == 0 && pic(x+1,y-1) == 1
                if rule(7) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            elseif pic(x-1,y-1) == 0 && pic(x,y-1) == 0 && pic(x+1,y-1) == 0
                if rule(8) == 1
                    pic(x,y) = 1;
                else
                    pic(x,y) = 0;
                end
            else
                pic(x,y) = 0;
            end
        end
    end
    filename = [sprintf('%d', rule'),'_large.png'];
    imwrite(pic,filename);
    disp(['File ', filename, ' saved.']);
end

