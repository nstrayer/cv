## My pagedown rendered CV

__Switch to googlesheets__

As I get older and more crotchety I find it more and more difficult to manually update a CSV. In response to this, I have moved the data-storing mechanism from a plain CSV to google sheets using the wonderful [`googlesheets4` package.](https://googlesheets4.tidyverse.org/index.html) This allows for a much more easy updating system and also makes it easy to store all the other info that didn't feel write to put into a CSV before (like the intro and aside text) right with everything as separate pages/sheets within the main sheet. 


## Structure

This repo contains the source-code and results of my CV built with the [pagedown package](https://pagedown.rbind.io) and a modified version of the 'resume' template. 

The main files are:

- `cv.Rmd`: Source template for the cv, contains a YAML variable `pdf_mode` in the header that changes styles for pdf vs html. 
- `render_cv.R`: R script for rendering both pdf and html version of CV at the same time.
  - `index.html`: The final output of the template when the header variable `PDF_EXPORT` is set to `FALSE`. View it at [nickstrayer.me/cv](http://nickstrayer.me/cv).
  - `strayer_cv.pdf`: The final exported pdf as rendered by Chrome on my mac laptop. Links are put in footer and notes about online version are added. 
- `styles/*, dd_cv.css`: Custom CSS files used to tweak the default 'resume' format from pagedown. 
- `resume.Rmd`: Source template for single page resume. (Currently neglected compared to CV.)
  - `resume.html`/`strayer_resume.pdf`: Result for single page resume.

## Want to use this to build your own CV/resume? 

I built a package that makes setting up a CV this way rather easy: [`datadrivencv`](http://nickstrayer.me/datadrivencv/).

The easiest way to get going is running these lines in the directory you want to have your CV in: 

```r
devtools::install_github("nstrayer/datadrivencv")

datadrivencv::use_datadriven_cv(full_name = "My Name")
```

This should populate your directory with the appropriate files to get started building your CV. Just fill in the internals with your own info. For a more detailed set of examples, see the [packages website](http://nickstrayer.me/datadrivencv/) and [docs](http://nickstrayer.me/datadrivencv/reference/use_datadriven_cv.html). 


## Looking for the old version with just a single CSV?

The [blog post I originally wrote about this process](https://livefreeordichotomize.com/2019/09/04/building_a_data_driven_cv_with_r/) used an older version of this document. I think that the new googlesheets method is easier to maintain and extend, however the old version is alive and well [here.](https://github.com/nstrayer/cv/releases/tag/1.0)


