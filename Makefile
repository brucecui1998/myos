
objects: loader.o kernel.objects

%.o: %.cpp
	g++ ${GPPPRAMS} -o $@ -c $<

%.o: %.s
	as ${ASPRAMS} -o $@ $<

mykernel.bin: linkker.ld ${objects}
