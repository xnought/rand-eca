function decimal_fractions = bits_to_fractions(bits, n, bits_per_number)
	% converts a vector of bits sized into n decimal numbers chunked over with bits_per_number precision

    binary_fraction_powers = 2.^(-1:-1:-bits_per_number); % for the binary to fraction conversion 2^{-1}, 2^{-2}, ...
    decimal_fractions = zeros(1, n);
    for i=1:n
		% pick out chunk over bits by bits_per_number 
        end_bit_index = i*bits_per_number;
        start_bit_index = end_bit_index - (bits_per_number - 1);
        nbits = bits(start_bit_index:end_bit_index);
        decimal_fractions(i) = sum(nbits .* binary_fraction_powers);
    end
end