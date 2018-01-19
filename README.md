<!-- README.md is generated from README.Rmd. Please edit that file -->
noar
====

[![Travis-CI Build
Status](https://travis-ci.org/kvantas/noar.svg?branch=master)](https://travis-ci.org/kvantas/noar)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/kvantas/noar?branch=master&svg=true)](https://ci.appveyor.com/project/kvantas/noar)
[![codecov](https://codecov.io/github/kvantas/noar/branch/master/graphs/badge.svg)](https://codecov.io/gh/kvantas/noar)
[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.4.0-6666ff.svg)](https://cran.r-project.org/)
[![packageversion](https://img.shields.io/badge/Package%20version-0.0.0.9000-orange.svg?style=flat-square)](https://github.com/kvantas/noar)

<!-- Short description of the package -->
R interface to the National Observatory of Athens weather stations
[data](http://www.noa.gr).

This package is under development.

Data sources
============

-   <http://stratus.meteo.noa.gr/front>

Installation
============

You can install the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("kvantas/noar")
```

Example
=======

The `noa_get_latest` function returns a tibble of the latest weather
observations.

``` r
# load libraries
library(noar)
library(tibble)
noa_get_latest()
#> # A tibble: 305 x 10
#>    `Sta<U+03B8>µ<U+03CC><U+03C2>`   `<U+038F><U+03C1>a` `Te<U+03C1>µ<U+03BF>- <U+03BA><U+03C1>as<U+03AF>a°~ `<U+0386><U+03BD>eµ<U+03BF><U+03C2>km/h` `<U+03A5><U+03B3><U+03C1>a- s<U+03AF>a%` `<U+03A0><U+03AF>es<U+03B7>hPa`
#>    <chr>       <chr>            <dbl>        <int> <chr>             <int>
#>  1 <U+0391>G. <U+03A0><U+0391><U+039D><U+03A4><U+0395>S~ 18:20             9.80            3 71%                1017
#>  2 <U+0391>G. <U+03A0><U+0391><U+03A1><U+0391>S<U+039A>~ 18:20            11.1             5 51%                1015
#>  3 <U+0391>G. <U+03A0><U+0391><U+03A5><U+039B><U+039F>S~ 18:20             4.10            6 66%                1015
#>  4 <U+0391>G.<U+039A><U+03A5><U+03A1><U+0399><U+0391><U+039A><U+0397>~ 18:20             6.90            3 76%                1020
#>  5 <U+0391>G<U+0399><U+0391> <U+039B><U+0391><U+03A1><U+0399>S~ 18:20             7.60           10 67%                1015
#>  6 <U+0391>G<U+0399><U+039F><U+0399> T<U+0395><U+039F><U+0394>~ 18:20            10.3             3 77%                1015
#>  7 <U+0391>G<U+0399><U+039F>S <U+039D><U+0399><U+039A><U+039F>~ 18:20            13.2             2 54%                1020
#>  8 <U+0391>G<U+03A1><U+0399><U+039D><U+0399><U+039F>     18:20             8.10            2 79%                1016
#>  9 <U+0391>T<U+0397><U+039D><U+0391>-G<U+039A><U+0391><U+0396><U+0399> 18:20            12.6             0 41%                1017
#> 10 <U+0391><U+0399>G<U+0399><U+039D><U+0391>      18:10            11.7             3 54%                1012
#> # ... with 295 more rows, and 4 more variables: `<U+0386><U+03BD>eµ<U+03BF><U+03C2>Max km/h` <chr>,
#> #   `Te<U+03C1>µ.Low °C` <dbl>, `Te<U+03C1>µ.High °C` <dbl>, `<U+0392><U+03C1><U+03BF><U+03C7><U+03AE> mm` <dbl>
```

<!-- * Installation instructions -->
<!-- * Brief demonstration usage -->
<!-- * If applicable, how the package compares to other similar packages and/or how it relates to other packages -->
<!-- * Citation information -->
