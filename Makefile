.PHONY: all clean

all: main.pdf

main.pdf: main.tex chapters/*.tex references.bib
	latexmk -pdf -bibtex -shell-escape main.tex

clean:
	latexmk -C
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.run.xml *.bcf 