#!/usr/bin/env python

import errno
import glob
import os

HOME = os.environ['HOME']
CURRDIR = os.environ['PWD'] + '/files'

IGNORE = ['.gitignore', '.git']

for fil in os.listdir(CURRDIR):
    if fil not in IGNORE:
        source = os.path.join(CURRDIR, fil)
        destination = os.path.join(HOME, '.' + fil)
        
        print('Linking ' + source + ' to ' + destination)
        try: 
            os.symlink(source, destination)
            print('Symlink created')
        except OSError as e:
            if e.errno == errno.EEXIST:
                os.unlink(destination)
                print('Unlinking Symlink')
                os.symlink(source, destination)
                print('Symlink created')
            else:
                raise e

