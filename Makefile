clean:	
	find . -name '*~' -o -name '*-frn.pdf' -o -name '*-frn.tex' -o -name '*.acn' -o -name '*.acr' -o -name '*.alg' -o -name '*.aux' -o -name '*.bcf' -o -name '*.bbl' -o -name '*.blg' -o -name '*.dvi' -o -name '*.fdb_latexmk' -o -name '*.glg' -o -name '*.glo' -o -name '*.gls' -o -name '*.idx' -o -name '*.ilg' -o -name '*.ind' -o -name '*.ist' -o -name '*.lof' -o -name '*.log' -o -name '*.lot' -o -name '*.lol' -o -name '*.maf' -o -name '*.mtc' -o -name '*.mtc0' -o -name '*.nav' -o -name '*.nlo' -o -name '*.out' -o -name '*.pdfsync' -o -name '*.ps' -o -name '*.snm' -o -name '*.synctex.gz' -o -name '*.toc' -o -name '*.vrb' -o -name '*.xdy' -o -name '*.tdo' -o -name '*.run.xml' -o -name '*-blx.bib' | xargs $(RM);

frontispiece:
	pdflatex arsclassica-frn.tex

index:
	makeindex -s classic arsclassica

thesis:
	pandoc --help
	