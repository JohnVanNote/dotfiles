# Makefile
#
# John Van Note
# 2017-03-23
#
# Make file for scripts
#

scripts=./bin
py=python


link:
	$(py) $(scripts)/link_files.py

write:
	sh $(scripts)/build_vim.sh
