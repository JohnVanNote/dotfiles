.PHONY: all link write
.SILENT: all link write

src=./src
py=python3

all: write link

link:
	$(py) $(src)/link_files.py

write:
	sh $(src)/build_vim.sh

clean:
	rm -rf files/vim/
