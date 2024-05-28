function visualize_rule30(start_state, n_iterations, visualize_from_i)
    % Visualizes rule 30 in an image for n_iterations from the given start_state
    % only shows from offset to end

    eca_generations = iterate_rule30(start_state, n_iterations);
    % also include the start state in visualization
    to_visualize = [start_state; 
                    eca_generations];
    % show 1s as black cells and 0s as white cells
    invert_colors = not(to_visualize(visualize_from_i:end, :));
    imshow(invert_colors, "InitialMagnification", 1000)
end