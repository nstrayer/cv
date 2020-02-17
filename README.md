## My pagedown rendered CV

__Switch to googlesheets__

As I get older and more crotchety I find it more and more difficult to manually update a CSV. In response to this, I have moved the data-storing mechanism from a plain CSV to google sheets using the wonderful [`googlesheets4` package.](https://googlesheets4.tidyverse.org/index.html) This allows for a much more easy updating system and also makes it easy to store all the other info that didn't feel write to put into a CSV before (like the intro and aside text) right with everything as separate pages/sheets within the main sheet. 

I have attempted to keep the whole thing as easy as possible to understand and modify by using a publically available sheet and preserving the old CSV driven way behind a boolean variable that can be set in the setup chunk. 

## cvdown package

Newer versions of this CV have been migrated to using the package [`cvdown`](https://github.com/nstrayer/cvdown). This package provides some helper functions that abstract away the annoyingly verbose code needed to keep track of links and build sections. It is built to be highly customizable, however, so you're not locked into a given format for your CV. That's the whole point of this endevor!


## Structure

This repo contains the source-code and results of my CV built with the [pagedown package](https://pagedown.rbind.io) and a modified version of the 'resume' template. 

The main files are:

- `index.Rmd`: Source template for the cv, contains a variable `PDF_EXPORT` in the header that changes styles for pdf vs html. 
  - `index.html`: The final output of the template when the header variable `PDF_EXPORT` is set to `FALSE`. View it at [nickstrayer.me/cv](http://nickstrayer.me/cv).
  - `strayer_cv.pdf`: The final exported pdf as rendered by Chrome on my mac laptop. Links are put in footer and notes about online version are added. 
- `resume.Rmd`: Source template for single page resume. 
  - `resume.html`/`strayer_resume.pdf`: Result for single page resume.
- `csvs/*.csv`: A series of CSVs containing the information CV and resume. Included as examples if the non-googlesheets method of storing data is prefered.  
- `css/`: Directory containing the custom CSS files used to tweak the default 'resume' format from pagedown. 

## Want to use this to build your own CV/resume? 

1. Fork, clone, download the zip of this repo to your machine with RStudio.
2. Make a copy of my [info-holding google sheet](https://docs.google.com/spreadsheets/d/14MQICF2F8-vf8CKPF1m4lyGKO6_thG-4aSwat1e2TWc/edit#gid=1730172225) and fill in your personal info for all the sheets (`positions`, `language_skills`, `text_blocks`, and `contact_info`). 
    a. If you want to use CSV's instead of google sheets, update the contents of the CSVs stored in the `csvs/` folder. 
2. Go through and personalize the supplementary text in the Rmd you desire (`index.Rmd` for CV, `resume.Rmd` for resume).
3. Print each unique `section` (as encoded in the `section` column of `positions.csv`) in your `.Rmd` with the command `position_data %>% print_section('education')`.
4. Let the world know how awesome you are! (Also send me a tweet/email if you desired and I will broadcast your version of the CV on this repo and or twitter.)

## Looking for the old version with just a single CSV?

The [blog post I originally wrote about this process](https://livefreeordichotomize.com/2019/09/04/building_a_data_driven_cv_with_r/) used an older version of this document. I think that the new googlesheets method is easier to maintain and extend, however the old version is alive and well [here.](https://github.com/nstrayer/cv/releases/tag/1.0)


