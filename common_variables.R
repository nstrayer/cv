# Common non-csv data between CV and resume

# Header with description of what is trying to be accomplished with this CV/Resume
intro_text <- "I have made [visualizations viewed by hundreds of thousands of people](https://www.nytimes.com/interactive/2016/08/26/us/college-student-migration.html), [sped up query times for 25 terabytes of data by an average of 4,800 times](https://livefreeordichotomize.com/2019/06/04/using_awk_and_r_to_parse_25tb/), and built [packages for R](https://github.com/nstrayer/shinysense) that let you [do magic](http://nickstrayer.me/dataDayTexas/).

Currently searching for a position that allows me to build tools leveraging a combination of visualization, machine learning, and software engineering to help people explore and understand their data in new and useful ways. 
"


# Language skills for skill bars visualization
skills <- tribble(
  ~skill,               ~level,
  "R",                  5,
  "Javascript (d3.js)", 4.5,
  "C++",                4,
  "Python",             4,
  "Bash",               3.5,
  "SQL",                3,
  "AWK",                3
)