# scripts to run before rendering the website

# Load required packages
library(quarto)

# render Quarto presentation
quarto::quarto_render(
  input = "04a_quarto_presentation.qmd",
  output_format = "revealjs",
  output_file = "04a_quarto_presentation.html"
  )
