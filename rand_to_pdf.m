function transformed = rand_to_pdf(rand_sample, pdf, t_a, t_b, num_rectangles)
    % compute target mapping areas and what x they correspond to
    dx = (t_b - t_a) / num_rectangles;
    target_xs = t_a:dx:(t_b-dx); % rectangle start coordinate x_i
    target_ys = pdf(target_xs); % pdf(x_i) or rectangle height
    areas = dx .* target_ys;  % rectangle widths times heights
    
    % then map the random uniform to those xs from the pdf
    % weighed by the pdf area for that rectangle
    r = rand_sample(:);
    source_bins = cumsum(areas); % the bins in the uniform distrubtion sized by the pdf areas 
    transformed = zeros(1, length(r));
    for i=1:length(r)
        target_i = find_bin(r(i), source_bins);
        transformed(i) = target_xs(target_i);
    end
    transformed = reshape(transformed, size(rand_sample));
end