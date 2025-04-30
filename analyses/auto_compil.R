sites <- "Misiones"
sites <- unique(readr::read_tsv("outputs/taxonomy_v4.tsv")$site)
for (site in sites) {
  print(site)
  file_name <- paste0(site, "_species.pdf")
  quarto::quarto_render(
    input = "analyses/site_summary.qmd",
    output_file = file_name,
    execute_params = list(
      site = site,
      path = file.path(
        "..", "outputs", "site_summary",
        paste0(site, "_species.tsv")
      )
    )
  )
  file.rename(
    from = file_name,
    to = file.path(
      "outputs",
      "site_summary",
      file_name
    )
  )
}
