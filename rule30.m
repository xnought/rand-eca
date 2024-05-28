function out_bit = rule30(in_vec3)
    % Applies rule 30 to a certain corresponding 3 cell states
    %  ⬛=1, ⬜=0

    % ⬛⬛⬛
    if in_vec3(1) && in_vec3(2) && in_vec3(3)
        out_bit = 0; % ⬜ 
    
    % ⬛⬛⬜
    elseif in_vec3(1) && in_vec3(2) && ~in_vec3(3)
        out_bit = 0; % ⬜ 

    % ⬛⬜⬛
    elseif in_vec3(1) && ~in_vec3(2) && in_vec3(3)
        out_bit = 0; % ⬜ 

    % ⬛⬜⬜
    elseif in_vec3(1) && ~in_vec3(2) && ~in_vec3(3)
        out_bit = 1; % ⬛

    % ⬜⬛⬛
    elseif ~in_vec3(1) && in_vec3(2) && in_vec3(3)
        out_bit = 1; % ⬛

    % ⬜⬛⬜
    elseif ~in_vec3(1) && in_vec3(2) && ~in_vec3(3)
        out_bit = 1; % ⬛
    
    % ⬜⬜⬛
    elseif ~in_vec3(1) && ~in_vec3(2) && in_vec3(3)
        out_bit = 1; % ⬛

    % ⬜⬜⬜
    else
        out_bit = 0; % ⬜ 
    end
end