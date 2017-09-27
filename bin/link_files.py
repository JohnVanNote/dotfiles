#!/usr/bin/env python
#
# link_files.py
#
# John Van Note
# 2017-03-23
#
# Script to link files
#


import errno
import glob
import os

HOME = os.environ['HOME']
CURRDIR = os.environ['PWD']

IGNORE = ['.gitignore', '.git']

for fil in glob.glob(".*"):
    if fil not in IGNORE:
        src = os.path.join(CURRDIR, fil)
        dst = os.path.join(HOME, fil)
        print src
        print dst
        try: 
            os.symlink(src, dst)
        except OSError, e:
            if e.errno == errno.EEXIST:
                os.unlink(dst)
                os.symlink(src, dst)
            else:
                raise e
