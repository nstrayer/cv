# CLAUDE.md - Guidelines for R CV/Resume Builder

## Build Commands
- **Render CV (both HTML/PDF)**: `Rscript render_cv.R`
- **Render CV to HTML only**: `Rscript -e "rmarkdown::render('cv.Rmd', params = list(pdf_mode = FALSE), output_file = 'index.html')"`
- **Render Resume**: `Rscript -e "rmarkdown::render('resume.Rmd')"`
- **Check R code style**: `lintr::lint("*.R")`

## Style Guidelines
- Follow tidyverse style guide with 2-space indentation
- Use pipe operators (`%>%` or `|>`) for data transformations
- Use descriptive variable names in snake_case format
- Document functions with roxygen-style comments
- Maintain consistent error handling with informative messages
- Group related code blocks with meaningful comments

## Data Structure
CV/Resume data stored in Google Sheets with sheets:
- `entries`: Work/education experiences
- `language_skills`: Programming/technical skills
- `text_blocks`: Text content sections
- `contact_info`: Personal contact information