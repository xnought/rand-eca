function num = eca_rule30_rand(start_state, num_bits)
    rule30 = [0  0  0  1  1  1  1  0];
    % gives me a num_bits sized array of bits (0 or 1 in each index)
    rand_bits = eca_run_middle_column(start_state, rule30, num_bits);
    num = binary_to_fraction(rand_bits);
end