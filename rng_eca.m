function rng_eca(time_offset)
    global seed
    global rule
    seed_radius = 1024;
    rule = [0  0  0  1  1  1  1  0];
    seed = [zeros(1, seed_radius) 1 zeros(1, seed_radius)];
    [~, seed] = eca_run_middle_column(seed, rule, seed_radius + time_offset);
end