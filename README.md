
<!-- README.md is generated from README.Rmd. Please edit that file -->
R/`methyvim`
============

[![Travis-CI Build Status](https://travis-ci.org/nhejazi/methyvim.svg?branch=master)](https://travis-ci.org/nhejazi/methyvim) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/nhejazi/methyvim?branch=master&svg=true)](https://ci.appveyor.com/project/nhejazi/methyvim) [![Coverage Status](https://img.shields.io/codecov/c/github/nhejazi/methyvim/master.svg)](https://codecov.io/github/nhejazi/methyvim?branch=master) [![Project Status: WIP - Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip) [![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Nonparametric variable importance analysis for the assessment of differential methylation

**Author:** [Nima Hejazi](http://nimahejazi.org)

------------------------------------------------------------------------

Description
-----------

`methyvim` is an R package that provides facilities for differential methylation analysis based on *variable importance measures* (VIMs), a class of statistical target parameters that arise in causal inference. The statistical techniques implemented rely on the use of targeted minimum loss-based estimation (TMLE) to assess two particular VIMs: (1) the "local" average treatment effect for discrete exposures, and (2) a nonparametric variable importance measure for continuous exposures. Within this framework, these methods allow differential methylation effects to be estimated in an assumption-free manner, on a pre-screened set of genomic sites measured by DNA methylation assays. As the statistical algorithm uses a multi-stage approach, multiple testing corrections are made using a modified marginal Benjamini & Hochberg step-up False Discovery Rate controlling procedure for multi-stage analyses (FDR-MSA). In order to allow the user significant flexibility with respect to the scientific questions posed, the procedure estimates one of the appropriate VIMs for each of a reduced set of genomic sites, using screening procedures to identify a reduced set from the full data when a reduced set is not pre-specified. While making allowance for the user to specify the reduced set of genomic sites to be tested (e.g., those related to a particular gene of interest), this package comes equipped with screening procedures to facilitate the initial reduction of genomic sites, the two most noteworthy of these being a procedure based on the well-known R package [`limma`](https://bioconductor.org/packages/release/bioc/html/limma.html) and an extension of data-adaptive statistical target parameters for multiple testing (implemented in the R package [`DA.Test`](https://github.com/wilsoncai1992/data.adapt.multi.test)).

------------------------------------------------------------------------

Installation
------------

<!--
For standard use, install from [Bioconductor](https://bioconductor.org):

```r
source("https://bioconductor.org/biocLite.R")
biocLite("methyvim")
```
-->
Install the most recent *stable release* from GitHub via [`devtools`](https://www.rstudio.com/products/rpackages/devtools/):

``` r
devtools::install_github("nhejazi/methyvim")
```

To contribute, install the *development version* from GitHub via [`devtools`](https://www.rstudio.com/products/rpackages/devtools/):

``` r
devtools::install_github("nhejazi/methyvim", ref = "develop")
```

------------------------------------------------------------------------

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

------------------------------------------------------------------------

Issues
------

If you encounter any bugs or have any specific feature requests, please [file an issue](https://github.com/nhejazi/methyvim/issues).

------------------------------------------------------------------------

Contributions
-------------

It is our hope that `methyvim` will grow to be widely adopted as a tool for the nonparametric assessment of variable importance in studies of differential methylation. To that end, contributions are very welcome, though we ask that interested contributors consult our [`contribution guidelines`](https://github.com/nhejazi/methyvim/blob/master/CONTRIBUTING.md) prior to submitting a pull request.

------------------------------------------------------------------------

Citation
--------

After using the `methyvim` R package, please cite it:

        @article{hejazi2017methyvim,
          doi = {},
          url = {},
          year  = {2017},
          month = {},
          publisher={Faculty of 1000 Ltd},
          volume = {},
          author = {Hejazi, Nima S. and Hubbard, Alan E. and {van der Laan},
                    Mark J.},
          title = {methyvim: Nonparametric Assessment of Variable Importance for
                   Differential Methylation Analysis},
          journal = {F1000Research}
        }

------------------------------------------------------------------------

References
----------

-   [Mark J. van der Laan & Sherri Rose. *Targeted Learning: Causal Inference for Observational and Experimental Data*, 2011.](http://www.targetedlearningbook.com)

-   [Antoine Chambaz, Pierre Neuvial, & Mark J. van der Laan. "Estimation of a non-parametric variable importance measure of a continuous exposure", *Electronic Journal of Statistics*, 2012.](http://www.math-info.univ-paris5.fr/~chambaz/Papiers/chambazNeuvialvanderLaan_EJS2012.pdf)

-   [Catherine Tuglus & Mark J. van der Laan. "FDR controlling procedures for multi-stage analyses", *UC Berkeley Division of Biostatistics Working Paper Series*, 2008.](http://biostats.bepress.com/ucbbiostat/paper239/)

-   [Weixin Cai, Nima S. Hejazi, & Alan E. Hubbard. "Data-adaptive statistics for multiple testing in high-dimensional settings", *In preparation*, 2017.](https://www.overleaf.com/5660573pjjrxh#/25678897/)

-   [Gordon K. Smyth. "Linear models and empirical Bayes methods for assessing differential expression in microarray experiments." *Statistical Applications in Genetics and Molecular Biology*, 3(1), 2004.](http://www.statsci.org/smyth/pubs/ebayes.pdf)

------------------------------------------------------------------------

License
-------

© 2017 [Nima S. Hejazi](http://nimahejazi.org), [Alan E. Hubbard](http://sph.berkeley.edu/alan-hubbard), [Mark J. van der Laan](https://www.stat.berkeley.edu/~laan/)

The contents of this repository are distributed under the MIT license. See file `LICENSE` for details.
