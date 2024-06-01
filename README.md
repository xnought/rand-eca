# `rand_eca`
A function like Matlabs built-in `rand`, but with elementary cellular automata rule 30 -> `rand_eca`. 

Created as part of the final project for MTH 321 Intro to Math Software class at Oregon State University taught by [Dr. Torrey Johnson](https://math.oregonstate.edu/directory/torrey-a-johnson).

- [Paper Report](https://xnought.github.io/files/rand_eca.pdf) detailing implementation and examples
- [`paper_figures.mlx`](./paper_figures.mlx) Matlab live script to reproduce the figures and statistical tests from the paper

<img src="assets/256.png" alt="elementary cellular automata rule 30 with width 200 for 100 iterations"/>

- [x] rule 30 function that given state produces next state
- [x] run the rule for x interations and visualize outputs
- [x] convert middle bits into numbers
- [x] function(seed, rule, width, num_bits, num_numbers) -> decimal list (potentially)
- [x] sampling strategy
- [x] visualize histogram
- [x] statistical tests versus uniform dist or metrics
	- [x] function that takes bins within [0, 1.0] and counts the occurences within the bins
	- [x] compute mse versus true uniform and our numbers
	- [x] compute $\chi^2$ for my function and the built in
- [x] write outline for report
- [x] do the transform to any other pdf
- [x] Create figure describing ECA
- [x] Create sampling strategy figure
- [x] Write out the ECA visulize in report
- [x] Write out the rand\_eca in the report 
- [x] Write out the statistical tests
- [x] Create figure for the statistical tests
- [x] Write implementation on the transform to any other pdf
- [x] Create figure showing conversion to other pdfs
