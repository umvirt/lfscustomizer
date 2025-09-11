dirs:
	mkdir -v {build,src,tmp}
	chmod -v 777 build src tmp

doc: 
	markdown README.md > README.html
