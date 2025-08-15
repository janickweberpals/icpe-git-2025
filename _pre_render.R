# scripts to run before rendering the website

# Load required packages
library(quarto)

# render Introduction to ICPE 2025 course
quarto::quarto_render(
  input = "00_introduction.qmd",
  output_format = "revealjs",
  output_file = "00_introduction.html"
  )

# render GitHub Copilot presentation
quarto::quarto_render(
  input = "04a_copilot_presentation.qmd",
  output_format = "revealjs",
  output_file = "04a_copilot_presentation.html"
  )

# render Quarto presentation
quarto::quarto_render(
  input = "05a_quarto_presentation.qmd",
  output_format = "revealjs",
  output_file = "05a_quarto_presentation.html"
  )
