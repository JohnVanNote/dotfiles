# Makefile
#
# John Van Note
# 2017-03-23
#
# Make file for scripts
#

.PHONY: all link write
.SILENT: all link write

scripts=./bin
py=python

all: link write

link:
	$(py) $(scripts)/link_files.py

write:
	sh $(scripts)/build_vim.sh
