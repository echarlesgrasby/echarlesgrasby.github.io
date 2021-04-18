# Minimal Makefile to complete a Sphinx build
# This Makefile is called from the .github/workflows/deploy.yml file via a GitHub Action

# You can set these variables from the command line.
SPHINXOPTS    = 
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# For local tests prior to pushing to GitHub
test:
	sphinx-autobuild --ignore _build -b dirhtml . _build/dirhtml --port 8000

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
