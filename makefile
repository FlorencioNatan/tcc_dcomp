# Este makefile gera um pdf a partir de um documento latex + bibtex
all:
	pdflatex exemplo.tex
	bibtex exemplo
	pdflatex exemplo.tex
	pdflatex exemplo.tex

clean:
	rm *.aux
	rm *.pdf
	rm *.lof
	rm *.log
	rm *.toc
	rm *.lot
#	rm *.dvi
	rm *.bbl
	rm *.blg
