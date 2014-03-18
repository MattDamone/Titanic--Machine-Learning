# Implementation of http://en.wikipedia.org/wiki/Association_rule_learning
support <- function(data, items) {
	n <- dim(data[,items])

	if(is.null(n)) {
		support <- sum(data[,items]) / length(data[,items])
	} else {
		support <- sum(rowSums(data[,items]) == n[2])/n[1]	
	}

 	return(support)
}

confidence <- function(data, X, Y) {

	return(support(data, c(X,Y)) / support(data, X) )
}