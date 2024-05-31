function eca_generations = iterate_rule30(start_state, n_iterations)
    %  from the start_state sized (1, state_width), iterate with rule30 n_iterations number of times
    % returns an matrix (n_iterations, state_width) with n_iterations past the start_state with rule30 applied to each row

    width = length(start_state);
    eca_generations = zeros(n_iterations, width);

    % generates next_state given previous_state starting with provided start_state
    current_state = start_state;
    for i=1:n_iterations
        current_state = next_state_rule30(current_state);
        eca_generations(i, :) = current_state;
    end
end