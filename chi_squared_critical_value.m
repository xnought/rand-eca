function critical_value = chi_squared_critical_value(data, num_bins)
	N = length(data);

	% count bin frequncies
	bin_edges = (0:num_bins) ./ num_bins; % equally spaced num_bins from 0 to 1 
	counts = count_bins(bin_edges, data);

	% compare versus true uniform counts should be
    uniform_per_bin_count = N / num_bins;
    true_uniform = zeros(1, num_bins) + uniform_per_bin_count; 
	E = true_uniform;
	O = counts;
	% \sum_{i=1}^{num_bins} (O_i - E_i)^2 / E_i is ~ \Chi^2_{df=num_bins-1}
    critical_value = sum((O - E).^2 ./ O);
end