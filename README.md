<div align="center">
<h1><code>Dedispersion.jl</code></h1>
<h4><i>Dedispersion algorithms, in Julia.</i></h4>
<br/>

![License][license]
![GitHub Stars][stars]
[![Gitmoji Badge][gitmoji_badge]][gitmoji]

<br/>
</div>

<div align="justify">

As radio waves travel through space, they pass through a lot of ionised gas, or plasma. This plasma acts, in many ways, like a prism; that is, it slows down radio waves at lower frequencies. Thus, radio waves at higher frequencies arrive earlier than those at lower frequencies. These delays introduce a smearing effect into time-domain data. **Dedispersion** is a technique used to undo this smearing effect, allowing us to detect both single and/or periodic pulses from sources such as pulsars, rotational radio transients (or RRATs), and fast radio bursts (or FRBs). `Dedispersion.jl` is a meta-package that brings together packages implementing various dedispersion algorithms in pure Julia. Currently, these are:

* [**`DirectDedispersion.jl`**](https://github.com/astrogewgaw/DirectDedispersion.jl)
* [**`RollingDedispersion.jl`**](https://github.com/astrogewgaw/RollingDedispersion.jl)
* [**`FastDedispersion.jl`**](https://github.com/astrogewgaw/FastDedispersion.jl)

with more packages in development. More information on how to use this package can be found in the documentation of each of the individual packages above. More comprehensive documentation is on the way.

Install it by typing and running:

```bash
] add Dedispersion
```

in the Julia REPL.

</div>

[gitmoji]: https://gitmoji.dev
[gitmoji_badge]: https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=for-the-badge
[stars]: https://img.shields.io/github/stars/astrogewgaw/Dedispersion.jl?style=for-the-badge
[license]: https://img.shields.io/github/license/astrogewgaw/Dedispersion.jl?style=for-the-badge
