# Derived data
Sylvain Schmitt -
Dec 5, 2024

This folder will contains the derived data for all analyses. In
particular:

- **corrected_taxo_v2**: taxonomy after dubious names correction
- **family_correction_table_v2**, **genus_correction_table_v2**,
  **species_correction_table_v2**: correction tables for taxonomy
  dubious names correction
- **tallo_brms**, **tallo_pars**: Bayesian modelling of tree asymptotic
  height and height-diameter allometric parameter
- **imputed_traits.tsv**: imputed functional traits raw result
- **wfo_out_v2.tsv**: wfo cleaning raw result
- **try_species_requests.tsv**, **try_req/try_req\*.txt**: batch of
  requests for species information and species information from TRY per
  batch

``` r
fs::dir_tree()
```

    .
    ├── README.md
    ├── README.qmd
    ├── README.rmarkdown
    ├── corrected_taxo_v2.tsv
    ├── family_correction_table_v2.tsv
    ├── genus_correction_table_v2.tsv
    ├── imputed_traits.tsv
    ├── raw_taxo_preped_v2.tsv
    ├── species_correction_table_v2.tsv
    ├── tallo_brms.Rdata
    ├── tallo_pars.tsv
    ├── try_req
    │   ├── try_req1.txt
    │   ├── try_req10.txt
    │   ├── try_req2.txt
    │   ├── try_req3.txt
    │   ├── try_req4.txt
    │   ├── try_req5.txt
    │   ├── try_req6.txt
    │   ├── try_req7.txt
    │   ├── try_req8.txt
    │   └── try_req9.txt
    ├── try_species_requests.tsv
    └── wfo_out_v2.tsv
