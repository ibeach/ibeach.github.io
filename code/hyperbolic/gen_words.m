function maps = gen_words(map_choices,depth,p)
    node_list = (1:map_choices)';
    for i = 1:depth
        current_words = numel(node_list(:,1));
        stopping = min([current_words, 200000]);
        node_list_new = zeros((map_choices-1)*stopping,i+1);
        index = 1;
        for j = 1:stopping
            word = node_list(j,:);
            last_letter = word(end);
            if mod(last_letter,2) == 0
                letters = [1:last_letter-1,last_letter+1:map_choices]; 
            else
                letters = [1:last_letter,last_letter+2:map_choices]; 
            end
%             if numel(word) > (p-1) && word(end) == word(end-1) % quick and simple pre-check
%                 if abs(sum(word(end-(p-1):end))/(p-1) - word(end)) < 1e-10
%                     letters = letters(letters ~= word(end));
%                 end
%             end
            len_add = numel(letters);
            iii = (index-1)*(len_add)+1:index*(len_add);
            node_list_new(iii,:) = [repmat(word,len_add,1),letters'];
            index = index + 1;
        end
        node_list = node_list_new;
    end
    maps = node_list;
end