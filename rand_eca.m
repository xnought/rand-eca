function rand_nums = rand_eca(rows, columns)    
    % Computes random numbers uniformly [0, 1) using Elementary Cellular Automata Rule 30
    % you specifiy the size (rows, columns) of the matrix of random numbers you get

    % these values are set from rng_eca function
    global seed
    global bits_per_number 
    global upper_memory_limit

    % initialize the seed if not found globally
    if isempty(seed)
       rng_eca(0); % initialize the seed value
    end

    % Iterate rule 30 to generate random numbers  
    n = rows*columns;
    % Chunk over the timesteps instead of computing all at once to save memory
    [num_chunks, n_iterations_per_chunk, decimal_nums_per_chunk] = compute_chunks(n, bits_per_number, length(seed), upper_memory_limit);
    rand_nums = zeros(num_chunks, decimal_nums_per_chunk);
    for i=1:num_chunks
        % Generate elementary cellular automata 
        eca_generations = iterate_rule30(seed, n_iterations_per_chunk);
        seed = eca_generations(end, :); % update seed with last ECA row

        % Convert the generated columns into fractions [0, 1)
        bits = reshape(eca_generations, 1, []);
        bits_to_fractions(bits, decimal_nums_per_chunk, bits_per_number);
        rand_nums(i, :) = bits_to_fractions(bits, decimal_nums_per_chunk, bits_per_number);
    end

    % Return matrix with specified shape (rows, columns)
    rand_nums = reshape(rand_nums, 1, []);
    rand_nums = reshape(rand_nums(1:n), rows, columns);
end