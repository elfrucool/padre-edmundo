#all: cleanpdf compile
all: cleanpdf nomk
	evince master.pdf

view:
	evince master.pdf

nomk:
	latex master
	bibtex master
	latex master
	latex master
	dvipdfmx master.dvi

compile:
	latex-mk master
	dvipdfmx master.dvi

cleanpdf:
	rm -vf master.pdf

clean:
	./clean.sh

