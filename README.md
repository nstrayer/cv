## My pagedown rendered CV

This repo contains the source-code and results of my CV built with the [pagedown package](https://pagedown.rbind.io) and a modified version of the 'resume' template. 

The main files are:

- `index.Rmd`: Source template for the cv, contains a variable `PDF_EXPORT` in the header that changes styles for pdf vs html. 
- `index.html`: The final output of the template when the header variable `PDF_EXPORT` is set to `FALSE`. View it at [nickstrayer.me/cv](http://nickstrayer.me/cv).
- `strayer_cv.pdf`: The final exported pdf as rendered by Chrome on my mac laptop. Links are put in footer and notes about online version are added. 
- `positions.csv`: A csv with columns encoding the various fields needed for a position entry in the CV. A column `section` is also available so different sections know which rows to use.
