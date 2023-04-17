# ssdsim linux support
all:ssd 
	echo "t" | ./ssd
#	rm -f ssd *.o *~
	
#all:testssd 
#	echo "example.ascii" | ./testssd
#	rm -f ssd *.o *~

clean:
	rm -f ssd *.o *~
.PHONY: clean

ssd: ssd.o avlTree.o flash.o initialize.o pagemap.o     
	cc -g -o ssd ssd.o avlTree.o flash.o initialize.o pagemap.o
testssd: ssd.o avlTree.o flash.o IsHot.o initialize.o pagemap-tmp.o     
	cc -g -o testssd ssd.o avlTree.o flash.o initialize.o pagemap-tmp.o
ssd.o: flash.h initialize.h pagemap.h
	gcc -c -g ssd.c
flash.o: pagemap.h
	gcc -c -g flash.c
initialize.o: avlTree.h pagemap.h
	gcc -c -g initialize.c
pagemap.o: initialize.h
	gcc -c -g pagemap.c
pagemap-tmp.o: initialize.h IsHot.o
	gcc -c -g pagemap-tmp.c
avlTree.o: 
	gcc -c -g avlTree.c

IsHot.o:
	gcc -c -g IsHot.c
