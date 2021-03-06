# Makefile
#
# John Van Note
# 2017-03-23
#
# Make file for scripts
#

.PHONY: all link write
.SILENT: all link write

scripts=./src
py=python

all: write link

link:
	$(py) $(scripts)/link_files.py

write:
	sh $(scripts)/build_vim.sh

clean:
	rm -rf files/vim/