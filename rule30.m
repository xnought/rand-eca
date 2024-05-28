function out_bit = rule30(vec3)
    % Applies rule 30 to a certain corresponding 3 cell states
    %  ⬛=1, ⬜=0

    % % ⬛⬛⬛
    % if vec3(1) && vec3(2) && vec3(3)
    %     out_bit = 0; % ⬜ 
    
    % % ⬛⬛⬜
    % elseif vec3(1) && vec3(2) && ~vec3(3)
    %     out_bit = 0; % ⬜ 

    % % ⬛⬜⬛
    % elseif vec3(1) && ~vec3(2) && vec3(3)
    %     out_bit = 0; % ⬜ 

    % % ⬛⬜⬜
    % elseif vec3(1) && ~vec3(2) && ~vec3(3)
    %     out_bit = 1; % ⬛

    % % ⬜⬛⬛
    % elseif ~vec3(1) && vec3(2) && vec3(3)
    %     out_bit = 1; % ⬛

    % % ⬜⬛⬜
    % elseif ~vec3(1) && vec3(2) && ~vec3(3)
    %     out_bit = 1; % ⬛
    
    % % ⬜⬜⬛
    % elseif ~vec3(1) && ~vec3(2) && vec3(3)
    %     out_bit = 1; % ⬛

    % % ⬜⬜⬜
    % else
    %     out_bit = 0; % ⬜ 
    % end

    % Which can be condensed down to simple bitwise ops
    out_bit = xor(vec3(1), or(vec3(2), vec3(3)));
end