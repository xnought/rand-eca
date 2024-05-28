function rand_nums = rand_eca(rows, columns)    
    bits_per_number = 13;
    global seed
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

    % flatten into bit string and convert to decimal notation
	bits = reshape(eca_generations, 1, []); 
    rand_nums = bits_to_fractions(bits, n, bits_per_number);
    % size like user specified (rows, columns)
    rand_nums = reshape(rand_nums, rows, columns); 
end