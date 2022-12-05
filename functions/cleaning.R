# Function = cleaning 
# Clean column names, remove empty rows, remove columns called comment and or starting with delta.

cleaning <- function(data){
  data %>%
    clean_names() %>%
    remove_empty(c('rows', 'cols')) %>%
    select(-starts_with('delta')) %>%
    select(-comments)
}

# Function = remove_empty_mass_flipper_sex
# Removes any NA values from the body mass, flipper length and sex columns. 
remove_empty_mass_flipper_sex <- function(data){
  data %>%
    filter(!is.na(flipper_length_mm)) %>%
    filter(!is.na(body_mass_g)) %>%
    filter(!is.na(sex))
}


