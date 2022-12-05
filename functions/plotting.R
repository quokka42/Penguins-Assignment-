# Function = ancova_plot 
# A figure which gives the graphical representation of the data for interpretation of the ANCOVA statistical test.

ancova_plot <- function(data){
    ggplot(penguins_gentoo_clean, aes(x = flipper_length_mm, y = body_mass_g, colour = sex, fill = sex)) + 
    geom_point(cex = 2, alpha = 0.7) + 
    geom_smooth(method = 'lm', level = 0.95) + 
    labs(x = 'Flipper Length/mm', y = 'Body Mass/g', title = 'How male and female Gentoo body mass varies with flipper length') +
    scale_colour_manual(values = c('royalblue3', 'chartreuse4')) + 
    scale_fill_manual(values = c('royalblue3', 'chartreuse4')) +
    theme_bw()
}

# Function = save_gentoo_svg
# Save the plot as an svg file, defining the size and the scaling 
save_gentoo_svg <- function(penguins_gentoo_clean, filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
                    height = size_inches, 
                    scaling = scaling)
  gentoo_ancova_plot <- ancova_plot(penguins_gentoo_clean)
  print(gentoo_ancova_plot)
}
