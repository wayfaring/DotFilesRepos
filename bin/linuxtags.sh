LNX=.
find $LNX                                                                 \
	-path "$LNX/kernel_src/arch/*" ! -path "$LNX/kernel_src/arch/arm*" -prune -o                \
	-path "$LNX/kernel_src/include/asm-*" ! -path "$LNX/kernel_src/include/asm-i386*" -prune -o \
	-path "$LNX/kernel_src/tmp*" -prune -o                                           \
	-path "$LNX/kernel_src/Documentation*" -prune -o                                 \
	-path "$LNX/kernel_src/scripts*" -prune -o                                       \
	-path "$LNX/kernel_src/drivers*" -prune -o                                       \
	-name "*.[chxsS]" -print > cscope.files
cscope -b -q -k
