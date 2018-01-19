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
#> # A tibble: 306 x 10
#>    station   time  temperature wind_speed humidity pressure wind_speed_max
#>    <chr>     <chr> <chr>       <chr>      <chr>    <chr>    <chr>         
#>  1 AG. PANT~ 18:30 9.6         0          73%      1018     34            
#>  2 AG. PARA~ 18:30 10.9        3          52%      1015     45            
#>  3 AG. PAUL~ 18:30 4.3         6          66%      1015     44            
#>  4 AG.KYRIA~ 18:20 6.9         3          76%      1020     19            
#>  5 AGIA LAR~ 18:20 7.6         10         67%      1015     26            
#>  6 AGIOI TH~ 18:20 10.3        3          77%      1015     35            
#>  7 AGIOS NI~ 18:20 13.2        2          54%      1020     48            
#>  8 AGRINIO   18:20 8.1         2          79%      1016     15            
#>  9 ATHENA-N~ 18:30 12.6        0          42%      1017     37            
#> 10 AIGINA    18:20 11.8        3          55%      1012     31            
#> # ... with 296 more rows, and 3 more variables: temp_low <chr>, temp_high
#> #   <chr>, precipitation <chr>
```

<!-- * Installation instructions -->
<!-- * Brief demonstration usage -->
<!-- * If applicable, how the package compares to other similar packages and/or how it relates to other packages -->
<!-- * Citation information -->
