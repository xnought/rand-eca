function rand_nums = rand_eca(rows, columns)    
    % Computes random numbers uniformly [0, 1) using Elementary Cellular Automata Rule 30
    % you specifiy the size (rows, columns) of the matrix of random numbers you get

    % these values are set from rng_eca function
    global seed
    global bits_per_number % numerical precision

    % initialize the seed if not found globally
    if isempty(seed)
       rng_eca(0); % initialize the seed value
    end


    % Iterate Elemntary Cellular Automata (ECA) Rule 30 
    n = rows*columns; 
    n_iterations_single_column = n*bits_per_number;
    n_iterations_all_columns = ceil(n_iterations_single_column/length(seed));
    eca_generations  = iterate_rule30(seed, n_iterations_all_columns);
    % and set the next seed as the last computed row
    seed = eca_generations(end, :); 

    % Convert the generated columns into fractions [0, 1)
	bits = reshape(eca_generations, 1, []); 
    rand_nums = bits_to_fractions(bits, n, bits_per_number);
    
    % Return matrix with specified shape (rows, columns)
    rand_nums = reshape(rand_nums, rows, columns); 
end