function [transformed, areas, target_xs, target_ys] = uniform_to_pdf(uniform, pdf, a, b, num_rectangles)
    % compute target mapping areas and what x they correspond to
    dx = (b - a) / num_rectangles;
    target_xs = a:dx:(b-dx); % rectangle start coordinate x_i
    target_ys = pdf(target_xs); % pdf(x_i) or rectangle height
    areas = dx .* target_ys;  % rectangle widths times heights
    
    % then map the random uniform to those xs from the pdf
    % weighed by the pdf area for that rectangle
    r = reshape(uniform, [], 1); % column vector
    source_bins = cumsum(areas) ./ sum(areas); % the bins in the uniform distrubtion sized by the pdf areas
    
    % find what rectangle the uniform maps to in the pdf
    target_rectangles_indexes = zeros(1, length(r));
    for i=1:length(r)
        a_i = find(r(i) < source_bins, 1);
        if isempty(a_i)
            target_rectangles_indexes(i) = length(source_bins); % end bin
        else
            target_rectangles_indexes(i) = a_i;
        end
    end

    transformed = reshape(target_xs(target_rectangles_indexes), size(uniform)); % grab the pdf x_i coordinate from the rectangles
end