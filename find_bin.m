function idx = find_bin(r, uniform_bins)
    idx = length(uniform_bins);
    for i=1:length(uniform_bins)
        if r < uniform_bins(i)
            idx = i;
            break;
        end
    end
end