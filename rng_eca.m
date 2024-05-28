function rng_eca(time_offset)
    global seed
    seed_radius = 512;
    seed = [zeros(1, seed_radius) 1 zeros(1, seed_radius)];
    % warmup the seed
    eca_generations = iterate_rule30(seed, seed_radius + time_offset);
    seed = eca_generations(end, :);
end