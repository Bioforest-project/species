# species
Oct 15, 2024

[![](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![lint](https://github.com/Bioforest-project/species/workflows/lint/badge.svg)](https://github.com/Bioforest-project/species/actions?query=workflow%3Alint)

**species** is a sub-project of the
[**BioForest**](https://github.com/Bioforest-project) project aimed at
species related data (correct names, functional traits, phylogeny) as
part of the data preparation for data preparation within the project.

## Usage

All **species** analyses rely on the quarto documents (`files.qmd`) that
can be run with R and associated environment defined with [renv](#0).

## Project

**species** includes:

- Analyse of the data with associated [documentation and
  figures](https://bioforest-project.github.io/species/):
  - Reproductive analyses in `files.qmd`
  - Resulting pages in `docs/`
  - Document structure definition in `_quarto.yml`
- Data in `data/` with:
  - All raw data in `raw_data/`
  - All derived data in `derived_sata/`
- R and other scripts in `scripts/`
- Intermediary files in `outputs/`
- Figures in `figures/`
- R environment definition with
  [renv](https://rstudio.github.io/renv/articles/renv.html) in `renv/`
  and `renv/lock`
- R files (`.Rbuildignore` , `.Rdata` , `.Rprofile` , `.Rhistory`)
- Git and GitHub files (`.gitignore` , `.github/`)
- Project documentation (`README.qmd` , `README.md` , `NEWS.md` )

> Should we add a license?

## Contribution

You can contribute to the project by forking the repository on github
and cloning the fork to your machine using several options, including
GitHub desktop GUI. Further informations on contribution are detailed in
the online document:
<https://bioforest-project.github.io/species/98_contributing.html>.

## Help

Please preferentially create an issue on GitHub for any questions, bugs
or help needed regarding **species**:
<https://github.com/Bioforest-project/species/issues> . You may however
reach us by mail with people from the core group (see below).

## Core group

- Sylvain Schmitt (sylvain.schmitt@cirad.fr)
- Camille Piponiot-Laroche (camille.piponiot-laroche@cirad.fr)
- Géraldine Derroire (geraldine.derroire@cirad.fr)
- Mithila Unkule (mithila.unkule@fondationbiodiversite.fr)
- Irié Cazimir Zo-Bi (iczobi@gmail.com)
- Anand Roopsind (aroopsind@gmail.com)

The whole group consist of participants to the [Bioforest
project](https://www.fondationbiodiversite.fr/la-frb-en-action/programmes-et-projets/le-cesab/bioforest/).

![](https://www.fondationbiodiversite.fr/wp-content/uploads/2023/10/bioforest-ws1_web.jpeg)
