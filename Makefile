# ssdsim linux support
tracefile=jenkins
gdb_enable=

all:dy_ssd
	echo "trace4ssd/$(tracefile)" | ./ssd

#all:testssd 
#	echo "example.ascii" | ./testssd
#	rm -f ssd *.o *~

clean:
	rm -f ssd *.o *~ *.so
.PHONY: clean

#dynamic linking
dy_ssd: libavlTree.so libflash.so libinitialize.so libpagemap.so     
	gcc -o ssd ssd.c -L. -lavlTree -lflash -linitialize -lpagemap
#libssd.so: flash.h initialize.h pagemap.h
#	gcc ssd.c -fPIC -shared -o libssd.so
libflash.so: pagemap.h
	gcc flash.c -fPIC -shared -o libflash.so
libinitialize.so: avlTree.h pagemap.h
	gcc initialize.c -fPIC -shared -o libinitialize.so
libpagemap.so: initialize.h
	gcc pagemap.c -fPIC -shared -o libpagemap.so
libavlTree.so: 
	gcc avlTree.c -fPIC -shared -o libavlTree.so
libIsHot.so:
	gcc IsHot.c -fPIC -shared -o libIsHot.so


#static link
ssd: ssd.o avlTree.o flash.o initialize.o pagemap.o     
	cc $(gdb_enable) -o ssd ssd.o avlTree.o flash.o initialize.o pagemap.o
testssd: ssd.o avlTree.o flash.o IsHot.o initialize.o pagemap-tmp.o     
	cc $(gdb_enable) -o testssd ssd.o avlTree.o flash.o initialize.o pagemap-tmp.o
ssd.o: flash.h initialize.h pagemap.h
	gcc -c $(gdb_enable) ssd.c
flash.o: pagemap.h
	gcc -c $(gdb_enable) flash.c
initialize.o: avlTree.h pagemap.h
	gcc -c $(gdb_enable) initialize.c
pagemap.o: initialize.h
	gcc -c $(gdb_enable) pagemap.c
pagemap-tmp.o: initialize.h IsHot.o
	gcc -c $(gdb_enable) pagemap-tmp.c
avlTree.o: 
	gcc -c $(gdb_enable) avlTree.c

IsHot.o:
	gcc -c $(gdb_enable) IsHot.c
