<!-- [![CI](https://github.com/totoroot/AdventOfCode2021.jl/workflows/CI/badge.svg)](https://github.com/totoroot/AdventOfCode2021.jl/actions?query=workflow%3ACI+branch%3Amaster) -->
<!-- [![Code coverage](https://codecov.io/gh/totoroot/AdventOfCode2021.jl/branch/master/graphs/badge.svg?branch=master)](https://codecov.io/github/totoroot/AdventOfCode2021.jl?branch=master) -->

# AdventOfCode2021.jl

This Julia package contains my solutions for [Advent of Code 2021](https://adventofcode.com/2021/).

## Overview

| Day | Problem | Median Time | Memory estimate | Source |
|----:|:-------:|-----:|-----------------:|:------:|
| 1 | [:white_check_mark:](https://adventofcode.com/2021/day/1) | 279.994 μs | 479.16 KiB | [:white_check_mark:](https://github.com/totoroot/AdventOfCode2021.jl/blob/master/src/day01.jl) |
| 2 | [:white_check_mark:](https://adventofcode.com/2021/day/2) | 101.683 μs | 64.78 KiB | [:white_check_mark:](https://github.com/totoroot/AdventOfCode2021.jl/blob/master/src/day02.jl) |


The benchmarks have been measured on this machine:
```
Platform Info:
  OS: NixOS 21.11 (Porcupine) x86_64
  CPU: AMD Ryzen 5 3600X (12) @ 3.800GHz
```

Run a benchmark in REPL with:

```julia
julia> using BenchmarkTools
julia> @benchmark AdventOfCode2021.Day01.day01()
```

## Installation and Usage

Make sure you have [Julia 1.5 or newer](https://julialang.org/downloads/)
installed on your system.


### Installation

Start Julia and enter the package REPL by typing `]`. Create a new
environment:
```julia
(@v1.5) pkg> activate aoc
```

Install `AdventOfCode2021.jl`:
```
(aoc) pkg> add https://github.com/totoroot/AdventOfCode2021.jl
```

Go back to the Julia REPL by pushing the `backspace` button.


### Usage

First, activate the package:
```julia
julia> using AdventOfCode2021
```

Each puzzle can now be run with `dayXY()`:
```julia
julia> day01()
2-element Array{Int64,1}:
  1007104
 18847752
```

This will use my personal input. If you want to use another input, provide it
to the `dayXY` method as a string. You can also use the `readInput` method
to read your input from a text file:
```julia
julia> input = readInput("/path/to/input.txt")

julia> AdventOfCode2021.Day01.day01(input)
2-element Array{Int64,1}:
  1007104
 18847752
```
