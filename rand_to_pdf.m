function transformed = rand_to_pdf(rand_sample, pdf, t_a, t_b, num_rectangles)
    % compute target mapping areas and what x they correspond to
    dx = (t_b - t_a) / num_rectangles;
    target_xs = t_a:dx:(t_b-dx); % rectangle start coordinate x_i
    target_ys = pdf(target_xs); % pdf(x_i) or rectangle height
    areas = dx .* target_ys;  % rectangle widths times heights
    
    % then map the random uniform to those xs from the pdf
    % weighed by the pdf area for that rectangle
    r = reshape(rand_sample, [], 1); % column vector
    source_bins = cumsum(areas); % the bins in the uniform distrubtion sized by the pdf areas
    target_rectangles_indexes = find_thread_over_rows(r < source_bins); % map the rand uniform to a rectangle in the pdf
    transformed = reshape(target_xs(target_rectangles_indexes), size(rand_sample)); % grab the pdf x_i coordinate from the rectangles
end