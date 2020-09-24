




library(ggplot2)
library(maps) 

br<- map(database = "world", regions = "brazil", exact = FALSE, boundary = TRUE,
    interior = TRUE)

#Obtendo o mapa do brasil
states_map <- map_data("world", region="Brazil")


ggplot(states_map, mapping=aes(y=lat, x=long, fill=subregion)) +
geom_polygon(color = "black", aes(fill = region))
