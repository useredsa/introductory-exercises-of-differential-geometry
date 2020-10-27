DOCNAME=doc
BDIR=out

$(BDIR)/%.pdf: %.tex | $(BDIR)
	lualatex --synctex=1 --halt-on-error --output-directory $(BDIR) "$<"

$(BDIR):
	mkdir $(BDIR)

clean: 
	rm -f $(BDIR)/*
