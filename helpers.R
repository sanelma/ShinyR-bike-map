#setting colors

visit <- "#B3CDE3" 
bike <- "#CCEBC5"
none <- "#F2F2F2"


race <- "#E31A1C"
ride <- "#33A02C"
other <- "#6A3D9A"


#function to plot map to be used in bikemap 
draw_map <- function(us_states, places){

  
    gg_map <- ggplot()
    gg_map <- gg_map + geom_map(data = us_states, 
                                aes(map_id = region,
                                    fill = cat),

   color = "white",
    map = us_states) +
      geom_point_interactive(data = places, 
                             aes(x = long,
                                 y = lat,
                                 color = cat,
                                 tooltip = name, 
                                 data_id = name), 
                             size = 2)+

      expand_limits(x = us_states$long, y = us_states$lat) +
      scale_fill_manual(values = c("none" = none, "bike" = bike, "visit" = visit),
                        labels = c( "States I've biked in", "Yet to come",
                                   "States I've visited but not biked in")
                        )+
      scale_color_manual(values = c("race" = race, "riding" = ride, "other" = other), guide = FALSE) +
      theme_bw() +
      theme(legend.position = "bottom", 
            legend.text = element_text(family = "sans"),
            legend.title = element_blank(),
            panel.grid = element_blank(), 
            axis.text = element_blank(), 
            axis.title = element_blank(), 
            axis.ticks = element_blank()) 
    
    return(gg_map)
 
}

