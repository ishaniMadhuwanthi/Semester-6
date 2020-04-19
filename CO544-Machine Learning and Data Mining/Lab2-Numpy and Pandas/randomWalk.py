#implement basic version of random walk.
 

import random
import matplotlib.pyplot as plt

xrange = range
position =0
walk = [position]
steps = 500
for i in xrange(steps):
    step = 1 if random.randint(0,1) else -1
    position += step
    walk.append(position)
plt.plot(walk)
plt.show()