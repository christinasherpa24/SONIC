
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SONIC

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/SONIC)](https://CRAN.R-project.org/package=SONIC)
<!-- badges: end -->

## Team Members

Christina Sherpa, Sariah Akhdar, Naomi Giancola

## Purpose

The purpose of this package is to provide information about the
countries of the world. The functions serve two purposes. First, gain
information about a specific country. Second, gain information about a
specific issue for all countries (ex: abortion access or environmental
issues).

## Target

The target audience for this package is anyone who is interested in
facts about the world. Specifically, we are aiming to appeal to people
who play games such as the Worldle and Globle. Additionally, this
package can be used by people who are looking for information from all
countries for a specific issue or issues surrounding a region
(neighboring countries).

## Installation

You can install the development version of sonic like so:

``` r
# install.packages("devtools")
devtools::install_github("christinasherpa24/sonic")
```

## Examples

Here are examples of how to run our functions and what they do.

This is an example of the function **bordering_countries**. It allows
users to enter a country name, for example “Albania” and then it will
return a list of all the countries that border that country.

``` r
library(sonic)
bordering_countries("Albania")
#> Albania is bordered by: 
#> Greece 
#> Montenegro 
#> North Macedonia 
#> Serbia
```

The function **carbon_timeseries** takes in a country name such as
“Nepal” and returns a line graph on the trend of carbon emissions
throughout the years and also lists out the total carbon emissions.

``` r
library(sonic)
carbon_timeseries("Nepal")
#> [[1]]
```

<img src="man/figures/README-ex2-1.png" width="100%" />

    #> 
    #> [[2]]
    #> [1] 69231

## Package Proposal

We intend to create a package that will allow users to get information
about a variety of issues for specific countries. So far, we have
information about geography (bordering countries), carbon emissions, and
population (from 2000-2022). We plan to add much more information such
as women’s right which can include aspects such as a women’s right to
vote or access to abortion as well as LGBTQ+ matters.
