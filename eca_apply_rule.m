function out_bit = eca_apply_rule(in_vec3, rule)
    % three bits correspond the colors, will produce an output bit based on
    % the rule
    % ⬜ -> 0, ⬛ -> 1

    % ⬛⬛⬛
    if in_vec3(1) && in_vec3(2) && in_vec3(3)
        out_bit = rule(1);
    
    % ⬛⬛⬜
    elseif in_vec3(1) && in_vec3(2) && ~in_vec3(3)
        out_bit = rule(2);

    % ⬛⬜⬛
    elseif in_vec3(1) && ~in_vec3(2) && in_vec3(3)
        out_bit = rule(3);

    % ⬛⬜⬜
    elseif in_vec3(1) && ~in_vec3(2) && ~in_vec3(3)
        out_bit = rule(4);

    % ⬜⬛⬛
    elseif ~in_vec3(1) && in_vec3(2) && in_vec3(3)
        out_bit = rule(5);

    % ⬜⬛⬜
    elseif ~in_vec3(1) && in_vec3(2) && ~in_vec3(3)
        out_bit = rule(6);
    
    % ⬜⬜⬛
    elseif ~in_vec3(1) && ~in_vec3(2) && in_vec3(3)
        out_bit = rule(7);

    % ⬜⬜⬜
    else
        out_bit = rule(8);
    end
end