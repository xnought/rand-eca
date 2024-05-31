function out_bit = rule30(vec3)
    % Applies rule 30 to a certain corresponding 3 cell states
    out_bit = xor(vec3(1), or(vec3(2), vec3(3)));
end