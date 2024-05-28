function [num_chunks, n_iterations_per_chunk, decimal_nums_per_chunk] = num_iterations(total_numbers_to_generate, bits_per_number, seed_width, upper_memory_limit) 
    % IMPORTANT: iterate_rule30() generates a (n_iterations, length(seed)) sized matrix 
    % so if you want to iterate 
    % put n_iterations into smaller chunks to limit memory use for large n_iterations

	% important high-level numbers
    total_bits_to_generate = total_numbers_to_generate*bits_per_number;
    num_eca_columns = seed_width;

	% ECA iterations and chunk size to limit memory consumptions
    % column must be atelast of length bits_per_number, but can be more
    n_iterations = max(bits_per_number, ceil(total_bits_to_generate/num_eca_columns));
    % break up the n_iterations into smaller chunks
    n_iterations_per_chunk = min(n_iterations, upper_memory_limit);
    num_chunks = ceil(n_iterations / n_iterations_per_chunk);
    % the count of decimal random numbers we get per chunk 
    decimal_nums_per_chunk = ceil(total_numbers_to_generate / num_chunks);
end