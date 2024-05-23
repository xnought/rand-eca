function rand_nums = rand_eca(rows, columns)    
    global seed

    if isempty(seed)
       rng_eca() % initialize the seed value
    end

    [flat_rand_nums, seed] = sample_rule30(seed, rows*columns);
    rand_nums = reshape(flat_rand_nums, rows, columns);
end