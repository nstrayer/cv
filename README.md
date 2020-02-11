## My pagedown rendered CV

This repo contains the source-code and results of my CV built with the [pagedown package](https://pagedown.rbind.io) and a modified version of the 'resume' template. 

The main files are:

- `index.Rmd`: Source template for the cv, contains a variable `PDF_EXPORT` in the header that changes styles for pdf vs html. 
  - `index.html`: The final output of the template when the header variable `PDF_EXPORT` is set to `FALSE`. View it at [nickstrayer.me/cv](http://nickstrayer.me/cv).
  - `strayer_cv.pdf`: The final exported pdf as rendered by Chrome on my mac laptop. Links are put in footer and notes about online version are added. 
- `resume.Rmd`: Source template for single page resume. 
  - `resume.html`/`strayer_resume.pdf`: Result for single page resume.
- `parsing_functions.R`: A series of small functions for parsing a position entry into the proper HTML format. Includes logic for removing links if needed etc..
- `gather_data.R`: Loads the data that makes up the body of both the CV and resume. Either pulls from a specified google sheet with info or multiple csvs. (Examples of both are provided in repo.)
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

The [blog post I originally wrote about this process](https://livefreeordichotomize.com/2019/09/04/building_a_data_driven_cv_with_r/) used an older version of this document. I think that the new googlesheets method is easier to maintain and extend, however the old version is alive and well in a seperate branch here. 


