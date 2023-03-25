#!/usr/bin/env python

import errno
import glob
import os

HOME = os.environ['HOME']
CURRDIR = os.environ['PWD'] + '/files'

IGNORE = ['.gitignore', '.git']

for fil in os.listdir(CURRDIR):
    if fil not in IGNORE:
        src = os.path.join(CURRDIR, fil)
        dst = os.path.join(HOME, '.' + fil)
        
        print('Linking ' + src + ' to ' + dst)
        try: 
            os.symlink(src, dst)
            print('Symlink created')
        except OSError as e:
            if e.errno == errno.EEXIST:
                os.unlink(dst)
                print('Unlinking Symlink')
                os.symlink(src, dst)
                print('Symlink created')
            else:
                raise e

