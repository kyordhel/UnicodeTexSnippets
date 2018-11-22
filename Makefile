PREFIX = example

TEXFILE = $(PREFIX).tex
PDFFILE = $(PREFIX).pdf
SILENT  = @

TEMP    = *.aux *.bbl *.blg *.log *.out
RMFILES = $(TEMP) *~ *.toc *.idx *.ilg *.ind *.synctex.gz \
	  *.tmp *.log *.lot *.lof *.adx *.and *.abb *.ldx .temp* $(PREFIX).tar

all:
ifeq (, $(shell which rubber))
	$(info rubber is not installed. Consider running apt-get install rubber)
	$(SILENT) make -s build
else
	$(SILENT) make -s qbuild
endif

build:
	$(SILENT) make -s clean
	$(SILENT) pdflatex $(PREFIX)
	$(SILENT) bibtex $(PREFIX)
	$(SILENT) pdflatex $(PREFIX)
	$(SILENT) pdflatex $(PREFIX)
	$(SILENT) rm -f $(TEMP)
	$(SILENT) xdg-open $(PDFFILE) &> /dev/null &

qbuild:
	$(SILENT) make -s clean
	$(SILENT) rubber --pdf --force $(TEXFILE)
	$(SILENT) rm -f $(TEMP)
	$(SILENT) xdg-open $(PDFFILE) &> /dev/null &

clean:
	$(SILENT) rm -f $(RMFILES)

rtf:
	$(SILENT) make -s clean
	$(SILENT) make -s bibtool
	$(SILENT) latex2rtf -D 600 $(TEXFILE)
	$(SILENT) rm -f $(TEMP)