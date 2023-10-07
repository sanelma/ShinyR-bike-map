
draw_map <- function(us_states, places){
 # if (require("maps") ) {
  
    gg_map <- ggplot()
    gg_map <- gg_map + geom_map(data = us_states, 
                                aes(map_id = region,
                                    fill = cat),
   #   tooltip = labs,
    #  data_id = region,

      #   onclick = onclick
   color = "white",
    map = us_states) +
      geom_point_interactive(data = places, 
                             aes(x = long,
                                 y = lat,
                                 color = cat,
                                 tooltip = name, 
                                 data_id = name), 
                             size = 2)+
    #     coord_map(projection = "albers", lat0 = 39, lat1 = 45)
      expand_limits(x = us_states$long, y = us_states$lat) +
      scale_fill_manual(values = c("none" = "grey85", "bike" = "olivedrab1", "visit" = "lightskyblue1"))+
      scale_color_manual(values = c("race" = "red", "riding" = "deepskyblue2", "other" = "purple2")) +
      theme_bw() +
      theme(legend.position = "none", 
            panel.grid = element_blank(), 
            axis.text = element_blank(), 
            axis.title = element_blank(), 
            axis.ticks = element_blank()) 
    return(gg_map)
    
#  }  
}






#draw_map <- function(states){
#  if (require("maps") ) {
#    states_map <- map_data("state")
#    gg_map <- ggplot(us_states, aes(map_id = region))
#    gg_map <- gg_map + geom_map_interactive(aes(
#      fill = region %in% states,
#      tooltip = labs,
#      data_id = region,
      #   onclick = onclick
 #   ),
#    map = states_map) +
      #   coord_map(projection = "albers", lat0 = 39, lat1 = 45)
 #     expand_limits(x = states_map$long, y = states_map$lat) +
  #    theme_bw() +
   #   theme(legend.position = "none") 
  #  x <- girafe(ggobj = gg_map)
   # if( interactive() ) print(x)
  
 # }  
#}
  
  
#  us_states <- map_data("state")
  
  
#  g <- ggplot(data = us_states, 
#         mapping = aes(x = long, y = lat, group = group, fill = region %in% states)) + 
#    geom_polygon( color = "black") + 
#    coord_map(projection = "albers", lat0 = 39, lat1 = 45) +
    # guides(fill = FALSE) + 
#   theme_bw() +
#    theme(legend.position = "none") +
#    coord_quickmap()
  
#  return(g) }
  



#bike_states <- c("michigan", "connecticut", "ohio", "wisconsin", "north carolina", 
 #                "massachusetts", "new jersey", "new york", "maryland", "iowa", "virginia", 
  #               "pennsylvania", "delaware", "alabama")


#if (require("maps") ) {
#  states_map <- map_data("state")
#  gg_map <- ggplot(us_states, aes(map_id = region))
#  gg_map <- gg_map + geom_map_interactive(aes(
#    fill = region %in% visit_states,
#    tooltip = labs,
#    data_id = region,
    #   onclick = onclick
 # ),
#  map = states_map) +
#    #   coord_map(projection = "albers", lat0 = 39, lat1 = 45)
#    expand_limits(x = states_map$long, y = states_map$lat) +
#   theme_bw() +
#    theme(legend.position = "none") 
#  x <- girafe(ggobj = gg_map)
# if( interactive() ) print(x)
#}
