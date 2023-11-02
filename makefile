dirs:
	mkdir -v {builddir,src,tmp,log}
	chmod -v 777 builddir src tmp log

doc: 
	markdown README.md > README.html
