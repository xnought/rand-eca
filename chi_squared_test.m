function [observed_critical_value, theoretical_critical_value, p_value, passed_test] = chi_squared_test(data, bins)
    observed_critical_value = chi_squared_critical_value(data, bins);
    signficance_level = 0.05;
    degrees_of_freedom = bins - 1;
    theoretical_critical_value = chi2inv(1-signficance_level, degrees_of_freedom);
    passed_test = observed_critical_value < theoretical_critical_value;
    p_value = chi2cdf(observed_critical_value, degrees_of_freedom, "upper");
end
