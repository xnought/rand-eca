function rng_eca()
    global seed
    seed_radius = 32;
    seed = [zeros(1, seed_radius) 1 zeros(1, seed_radius)];
end