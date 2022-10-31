<div style="font-family:JetBrainsMono Nerd Font">

# `DeDisp.jl`

![Stars][stars-badge]
![License][license-badge]
[![Gitmoji][gitmoji-badge]][gitmoji]

## DeDispersion, implemented in Julia.

<div align="justify">

This is a work-in-progress implementation of the dedispersion algorithm, used in
time-domain radio astronomy, in [**Julia**][julia]. Dedispersion is often the
main bottleneck in real-time search pipelines for pulsars and radio transients,
and hence it is implemented in low-level languages, such as C, C++, FORTRAN, or
CUDA (for GPUs). This package hopes to demonstrate that similar speeds, on both
the CPU and the GPU, can be obtained with a high-level language as well. To
drive this point home, I have benchmarked `DeDisp.jl` versus `prepsubband`,
which is the CLI that implements dedispersion in `PRESTO`, one of the most used
libraries in pulsar astronomy:


<br/>
<img
    align="center"
    src="bench/bench_plot.png"
    alt="Speedup of DeDisp.jl over PRESTO"
/>
<br/><br/>

For more details on how this benchmark was generated, have a look at the
[**`bench/README.md`**](bench/README.md) file, which gives a detailed look into
the entire process.

</div>

</div>

[julia]: https://julialang.org
[gitmoji]: https://gitmoji.dev
[presto]: https://github.com/scottransom/presto
[stars-badge]: https://img.shields.io/github/stars/astrogewgaw/DeDisp.jl?style=for-the-badge
[license-badge]: https://img.shields.io/github/license/astrogewgaw/DeDisp.jl?style=for-the-badge
[gitmoji-badge]: https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=for-the-badge
