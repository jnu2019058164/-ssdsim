import matplotlib.pyplot as plt
f=open('req.dat','r')
a=f.readline().split()
a=[float(i) for i in a]
plt.plot(a)
plt.show()
f.close()
f=open('req.dat','w')
f.close()

