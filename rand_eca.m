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

    % Iterate Elemntary Cellular Automata (ECA) Rule 30 
    n = rows*columns; 
    num_bits_to_generate = n*bits_per_number;
    n_iterations = ceil(num_bits_to_generate/length(seed));
    n_iterations = max(bits_per_number, n_iterations); % at least need to iterate bits_per_number times!
    eca_generations = iterate_rule30(seed, n_iterations);
    seed = eca_generations(end, :);  % and set the next seed as the last computed row

    % Convert the generated columns into fractions [0, 1)
	bits = reshape(eca_generations, 1, []); 
    rand_nums = bits_to_fractions(bits, n, bits_per_number);
    
    % Return matrix with specified shape (rows, columns)
    rand_nums = reshape(rand_nums, rows, columns); 
end