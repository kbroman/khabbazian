default: check 
	R CMD build MoBrownie
doc:
	cd MoBrownie; R -e 'library(devtools); document(roclets=c("namespace", "rd"))'
check: doc
	 R CMD check MoBrownie 
