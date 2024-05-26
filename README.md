# rand-eca

Random uniform using elementary cellular automata in matlab.

<img src="eca.png" alt="elementary cellular automata rule 30 with width 200 for 100 iterations"/>

- [x] rule 30 function that given state produces next state
- [x] run the rule for x interations and visualize outputs
- [x] convert middle bits into numbers
- [x] function(seed, rule, width, num_bits, num_numbers) -> decimal list (potentially)
- [x] sampling strategy
- [x] visualize histogram
- [ ] statistical tests versus uniform dist or metrics
	- [x] function that takes bins within [0, 1.0] and counts the occurences within the bins
	- [x] compute mse versus true uniform and our numbers
	- [x] compute $\chi^2$ for my function and the built in
- [x] write outline for report
- [x] do the transform to any other pdf
- [ ] Create figure describing ECA
- [ ] Create sampling strategy figure
- [ ] Write out the ECA visulize in report
- [ ] Write out the rand\_eca in the report 
- [ ] Write out the statistical tests
- [ ] Create figure for the stastitical tests
- [ ] Write implementation on the transform to any other pdf
- [ ] Create figure showing conversion to other pdfs

## Sampling Strategy

- Given a seed radius (padding around the middle bit on both sides)
- Given timesteps (8 for 8 bit number)
- Given numbers to sample as $n$


seed -> 00000000100000000 has seed radius 9 (since 9 zeros on each side of middle number)
Run for 8 iterations, I take the middle column and convert to decimal binary.

## References

- https://mathworld.wolfram.com/Rule30.html
- https://demonstrations.wolfram.com/UsingRule30ToGeneratePseudorandomRealNumbers/#more
- https://www.youtube.com/watch?v=oe_qk31wGLY
