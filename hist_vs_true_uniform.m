function hist_vs_true_uniform(data, bins, hist_label)
	c = [208 208 208] ./ 255;
	histogram(data, bins, "DisplayName", hist_label, "FaceColor", c, "EdgeColor", "w", "Normalization", "count");
	hold on
	ideal = length(data) / bins;
	plot([0 1], [ideal ideal], "r--","LineWidth", 3, "DisplayName", "True Uniform Frequncies");
	hold off
	legend("Location", "south")
end

