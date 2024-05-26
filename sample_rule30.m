function [sampled, new_seed] = sample_rule30(seed, n, bits_per_number)
    sampled = zeros(1, n);
    timesteps = bits_per_number*n;
    rule30 = [0  0  0  1  1  1  1  0];
    [middle_column, new_seed] = eca_run_middle_column(seed, rule30, timesteps);
    % partion the middle_column so we get n number of bytes to convert to
    % decimal fractions
    for i=1:n
        end_bit_index = i*bits_per_number;
        start_bit_index = end_bit_index - (bits_per_number - 1);
        bits = middle_column(start_bit_index:end_bit_index);
        sampled(i) = binary_to_fraction(bits);
    end
end