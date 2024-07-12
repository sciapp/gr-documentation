
SPHINXOPTS  :=
SOURCEDIR   := $(abspath src)
BUILDDIR    := $(abspath build)
VENVDIR     := $(abspath .venv)
PYTHON      := $(VENVDIR)/bin/python
PIP         := $(PYTHON) -m pip
SPHINXBUILD := $(PYTHON) -m sphinx

html: .FORCE
	bash src/gen-rust-rst.sh
	python3 -m venv $(VENVDIR)
	$(PIP) install --upgrade pip wheel build
	rm -rf python-gr/dist/
	cd python-gr && $(PYTHON) -m build --sdist
	$(PIP) install python-gr/dist/gr-*.tar.gz
	$(PIP) install -r requirements.txt
	mkdir -p $(BUILDDIR)
	doxygen Doxyfile
	mkdir -p $(SOURCEDIR)/examples
	$(SPHINXBUILD) -b html $(SPHINXOPTS) $(SOURCEDIR) $(BUILDDIR)

clean:
	rm -rf $(VENVDIR)
	rm -rf $(BUILDDIR)
	rm -rf $(SOURCEDIR)/examples

.FORCE:

.PHONY: .FORCE clean html

