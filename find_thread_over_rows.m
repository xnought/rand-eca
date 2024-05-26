function idx = find_thread_over_rows(condition)
    %  https://www.mathworks.com/help/matlab/ref/max.html
    [~, idx] = max(condition, [], 2);
end