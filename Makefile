
SPHINXOPTS  :=
SOURCEDIR   := $(abspath src)
BUILDDIR    := $(abspath build)
VENVDIR     := $(abspath .venv)
PYTHON      := $(VENVDIR)/bin/python
PIP         := $(PYTHON) -m pip
SPHINXBUILD := $(PYTHON) -m sphinx

html: .FORCE
	python3 -m venv $(VENVDIR)
	$(PIP) install --upgrade pip wheel
	rm -rf python-gr/dist/
	cd python-gr && $(PYTHON) setup.py sdist
	$(PIP) install python-gr/dist/gr-*.tar.gz
	$(PIP) install -r requirements.txt
	mkdir -p $(SOURCEDIR)/examples
	$(SPHINXBUILD) -b html $(SPHINXOPTS) $(SOURCEDIR) $(BUILDDIR)

clean:
	rm -rf $(VENVDIR)
	rm -rf $(BUILDDIR)
	rm -rf $(SOURCEDIR)/examples

.FORCE:

.PHONY: .FORCE clean html

