# `rand_eca`
A function like Matlabs built-in `rand`, but with elementary cellular automata rule 30 -> `rand_eca`. 

Created as part of the final project for MTH 321 Intro to Math Software class at Oregon State University taught by [Dr. Torrey Johnson](https://math.oregonstate.edu/directory/torrey-a-johnson).

- [Paper Report](https://xnought.github.io/files/rand_eca.pdf) detailing implementation and examples
- [`paper_figures.mlx`](./paper_figures.mlx) Matlab live script to reproduce the figures and statistical tests from the paper

## Usage

See [`paper_figures.mlx`](./paper_figures.mlx) for some real examples. Or keep reading for some basic usage:

Create a 5 by 5 matrix of random numbers with

```matlab
>>> rand_eca(5, 5)

ans =

    0.4503    0.5751    0.3367    0.0591    0.5269
    0.3175    0.2145    0.8160    0.4702    0.4904
    0.8158    0.9244    0.7169    0.8429    0.1620
    0.6902    0.5453    0.6776    0.0731    0.1528
    0.5684    0.4788    0.3795    0.9459    0.3949
```

Create a 10 by 1 vector of random numbers with

```matlab
>>> rand_eca(10, 1)

ans =

    0.0090
    0.2432
    0.4174
    0.7878
    0.7194
    0.6636
    0.3868
    0.0585
    0.4775
    0.7587
```

Generating 10 numbers sampled from exponential with $\lambda=1$

```matlab
>>> uniform_to_pdf(rand_eca(10, 1), @(x) exp(-x), 0, 6, 10000)

ans =

    1.6578
    1.2984
    0.7098
    0.2778
    2.4618
    0.0378
    3.5736
    0.3924
    0.3666
    1.5510
```

Resetting the seed, as you can see genereates the same numbers after subsequent calls

```matlab
>>> rng_eca(0)
>>> rand_eca(5,5)

ans =

    0.4503    0.5751    0.3367    0.0591    0.5269
    0.3175    0.2145    0.8160    0.4702    0.4904
    0.8158    0.9244    0.7169    0.8429    0.1620
    0.6902    0.5453    0.6776    0.0731    0.1528
    0.5684    0.4788    0.3795    0.9459    0.3949

>>> rng_eca(0)
>>> rand_eca(5,5)

ans =

    0.4503    0.5751    0.3367    0.0591    0.5269
    0.3175    0.2145    0.8160    0.4702    0.4904
    0.8158    0.9244    0.7169    0.8429    0.1620
    0.6902    0.5453    0.6776    0.0731    0.1528
    0.5684    0.4788    0.3795    0.9459    0.3949
```

Visualize 512 iterations of ECA rule 30 starting from a single black cell

```matlab
>>> visualize_rule30([zeros(1, 256) 1 zeros(1, 256)], 512, 1)
```
![eca](https://github.com/xnought/rand-eca/assets/65095341/3bbbddb2-0402-429f-9561-43b2ff6b31bd)
