default: 
	R CMD build MoBrownie
doc:
	cd MoBrownie; R -e 'library(devtools ); document(roclets=c("namespace", "rd"))'
check:
	 R CMD check MoBrownie 
