#!/bin/sh

DIR=.

rm cscope.* tags filenametags

# generate tag file for lookupfile plugin
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > filenametags
find . -not -regex '.*\.\(png\|gif\)' -type f -printf "%f\t%p\t1\n" | \
	    sort -f >> filenametags 

find . -name "*.[ch]" > cscope.files
cscope -b -q -k
ctags -L cscope.files
