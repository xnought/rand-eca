function fraction = binary_to_fraction(bits)
    % does binary to decimal conversion for the number after the .
    % So 101 converts to 
    % 1*2^{-1} + 0*2^{-2} + 1*2^{-3} = 0.6250
    
    powers = -1:-1:-length(bits);
    fraction = sum(bits .* (2.^powers));
end