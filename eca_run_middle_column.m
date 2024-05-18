function middle_column = eca_run_middle_column(start_state, rule, iterations)
    middle_column = zeros(1, iterations);
    middle = ceil(length(start_state) / 2);
    for i=1:iterations
        middle_column(i) = start_state(middle);
        start_state = eca_next_state(start_state, rule);
    end

    middle_column(end) = start_state(middle);
end