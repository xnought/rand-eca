function next_state = next_state_rule30(current_state)
    % Takes a 1D vector of size/shape (1, n)
    % Produces a 1D vector of size/shape (1, n) with rule30 applied

    n = length(current_state);
    next_state = zeros(1, n);

    % wrap around start
    next_state(1) = rule30([current_state(end) current_state(1:2)]); 

    % slide window over current state
    for i=2:n-1
        window_start = i-1; window_end = i+1; % window of 3 cells to produce ith next state
        next_state(i) = rule30(current_state(window_start:window_end));
    end

    % wrap around end
    next_state(end) = rule30([current_state(end-1:end) current_state(1)]); 
end