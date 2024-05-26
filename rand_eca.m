function rand_nums = rand_eca(rows, columns)    
    bits_per_number = 13;
    rule30 = [0  0  0  1  1  1  1  0];
    global seed
    if isempty(seed)
       rng_eca() % initialize the seed value
    end

    % Iterate eca rule 30 
    n = rows*columns;
    timesteps = bits_per_number*n;
    [middle_column, seed] = eca_run_middle_column(seed, rule30, timesteps);

    % Convert midle rows from eca to fractions between [0, 1.0)
    binary_fraction_powers = 2.^(-1:-1:-bits_per_number); % for the binary to fraction conversion 2^{-1}, 2^{-2}, ...
    rand_nums = zeros(1, n);
    for i=1:n
        end_bit_index = i*bits_per_number;
        start_bit_index = end_bit_index - (bits_per_number - 1);
        bits = middle_column(start_bit_index:end_bit_index);
        rand_nums(i) = sum(bits .* binary_fraction_powers);
    end
    
    rand_nums = reshape(rand_nums, rows, columns);
end