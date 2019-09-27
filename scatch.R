# Random functions I built while deciding the proper data format for positions. Here for reference

# Originally I wrote out the positions as lists of lists. 
# This function converted them to a dataframe with multiple columns
# for the multiple descriptions
make_df_from_list <- function(list_of_positions, section_name){
  list_of_positions %>% 
    purrr::map_dfr(function(position){
      descriptions <- as.list(position$description) %>% 
        set_names(paste0('description_', 1:length(position$description)))
      
      position$description <- NULL
      
      c(position, descriptions)
    }) %>% mutate(section = section_name)
}