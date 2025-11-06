# piragua <img src="man/figures/piragua-badge.png" align="left" height="120" />

**Streamflow and Trend Analysis Tools for the PIRAGUA Project**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R](https://img.shields.io/badge/R-%3E%3D4.1-blue)](https://cran.r-project.org/)

---

## Overview

The **piragua** R package provides reproducible tools to compute hydrological indicators, perform trend analyses, and generate summary plots for daily streamflow and precipitation data across the Pyrenean region.  

It was developed within the [PIRAGUA project (EFA210/16)](https://www.opcc-ctp.org/en/piragua) to support basin-wide hydrological assessments and reporting of climate-related changes in water resources.

---

## Installation

Install the development version directly from GitHub:

```r
# install.packages("remotes")
remotes::install_github("sbegueria/piragua")
```

Alternatively, clone this repository and build manually:

```bash
git clone https://github.com/sbegueria/piragua.git
R CMD build piragua
R CMD INSTALL piragua_0.1.0.tar.gz
```

---

## Documentation

A complete **reference manual** is included in the repository root:  
👉 [📘 piragua_0.1.0.pdf](./piragua_0.1.0.pdf)

After installing the package, documentation can be accessed directly from R:

```r
?piragua
help(package = "piragua")
```

---

## Vignette

An extended vignette demonstrating the full workflow — from daily streamflow data to hydrological indicators and trend analysis — is included.  

To open it inside R:

```r
browseVignettes("piragua")
# or directly
vignette("example", package = "piragua")
```

The source vignette file is located in [`vignettes/example.Rmd`](vignettes/example.Rmd).

---

## Example usage

```r
library(piragua)

# Load example dataset
data("anzanigo")

# Compute annual and monthly streamflow indicators
annual  <- piragua_annual(anzanigo)
monthly <- piragua_monthly(anzanigo)

# Estimate trends
trend_y <- piragua_trend(annual)

# Generate integrated plots
piragua_plot(da = anzanigo, mo = monthly, an = annual, tr = trend_y, st = 1, save = FALSE)
```

---

## Data

An example dataset (`anzanigo`) containing daily streamflow observations for the Gállego River at Anzánigo is provided in the package `data/` directory.  

View its documentation with:

```r
?anzanigo
```

---

## Citation

If you use this package in your research, please cite:

> Beguería, S. (2025). *piragua: Streamflow and Trend Analysis Tools for the PIRAGUA Project*.  
> CSIC-EEAD. Available at <https://github.com/yourusername/piragua>

---

## License

GPL-3 © Santiago Beguería

---

## Acknowledgements

This package was developed as part of the **PIRAGUA project (EFA210/16)** under the European Territorial Cooperation Programme (*Interreg V-A Spain–France–Andorra*).  
It builds upon R packages such as `xts`, `zyp`, `ismev`, `evd`, and `ggplot2`.
