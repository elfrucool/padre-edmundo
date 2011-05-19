all: cleanpdf compile
	evince master.pdf

view:
	evince master.pdf

compile:
	latex-mk master
	dvipdfmx master.dvi

cleanpdf:
	rm -vf master.pdf

clean:
	./clean.sh

