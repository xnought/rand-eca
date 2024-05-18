function s_1 = eca_next_state(s_0, rule)
    n = length(s_0);
    s_1 = zeros(1, n);
    s_1(1) = eca_apply_rule([s_0(end) s_0(1:2)], rule); % wrap around start
    for i=1:n-2
        vec3 = s_0(i:i+2);
        s_1(i+1) = eca_apply_rule(vec3, rule);
    end
    s_1(end) = eca_apply_rule([s_0(end-1:end) s_0(1)], rule); % wrap around end
end