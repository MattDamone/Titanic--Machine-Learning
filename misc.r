support <- function(data, items) {
 	supportCount <- sum(data[,items] == 1)
 	support <- supportCount/dim(data)[1]

 	return(support)
}