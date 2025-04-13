# scripts to run before rendering the website

# Load required packages
library(quarto)

# render GitHub Copilot presentation
quarto::quarto_render(
  input = "03a_copilot_presentation.qmd",
  output_format = "revealjs",
  output_file = "03a_copilot_presentation.html"
  )

# render Quarto presentation
quarto::quarto_render(
  input = "04a_quarto_presentation.qmd",
  output_format = "revealjs",
  output_file = "05a_quarto_presentation.html"
  )
