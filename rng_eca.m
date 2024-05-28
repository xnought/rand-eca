function rng_eca(offset)
    % reseeds the rand_eca function for reproducability
    % time_offset allows you to change the seed time_offset iterations in the future

    % a single black square in the middle surrounded by white
    % there are seed_radius white cells on the left side then another seed_radius number of white cells on the right side
    padding = 512;
    start_state = [zeros(1, padding) 1 zeros(1, padding)];


    % when the start state goes past a certain number of iterations (padding number of times), 
    % we get rid of the pyramid like pattern
    warmup = padding + offset;
    for i=1:warmup
		start_state = next_state_rule30(start_state);
    end

    global seed % exposed globally so the rand_eca can access the seed and set it when it's done
    seed = start_state;
end