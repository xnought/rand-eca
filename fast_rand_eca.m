function rand_nums = fast_rand_eca(rows, columns)    
    bits_per_number = 13;
    global seed
    global rule
    if isempty(seed)
       rng_eca(); % initialize the seed value
    end

    % Iterate eca rule 30 
    n = rows*columns;
    timesteps = bits_per_number*n;

	% seed as initial state, compute timsteps, and set the seed as the last
	start_state = seed;
	columns_to_sample = 1:1:length(start_state)
	num_cols = length(columns_to_sample);
	new_timesteps = ceil(timesteps / num_cols);
	eca_columns = zeros(num_cols, new_timesteps);
	for i=1:new_timesteps
		eca_columns(:, i) = start_state(columns_to_sample);
		start_state = eca_next_state(start_state, rule);
	end
	eca_columns(:, i) = start_state(columns_to_sample);

	seed = start_state;

	eca_generated_bits = reshape(eca_columns.', 1, []);
    % Convert midle rows from eca to fractions between [0, 1.0)
    binary_fraction_powers = 2.^(-1:-1:-bits_per_number); % for the binary to fraction conversion 2^{-1}, 2^{-2}, ...
    rand_nums = zeros(1, n);
    for i=1:n
        end_bit_index = i*bits_per_number;
        start_bit_index = end_bit_index - (bits_per_number - 1);
        bits = eca_generated_bits(start_bit_index:end_bit_index);
        rand_nums(i) = sum(bits .* binary_fraction_powers);
    end
    
    rand_nums = reshape(rand_nums, rows, columns);
end