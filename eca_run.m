function saved = eca_run(start_state, rule, iterations)
    width = length(start_state);
    eca = zeros(iterations, width);
    eca(1, :) = start_state;
    for i=1:iterations
        eca(i+1, :) = eca_next_state(eca(i, :), rule);
    end
    saved = eca;
end