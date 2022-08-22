import matplotlib.pyplot as plt
import numpy as np
import sys

data = np.loadtxt(sys.argv[1], comments=["#", "@"]).T

fig, ax = plt.subplots()
x_data = data[0]
for y_data in data[1:]:
    avg_y = np.convolve(np.ones(200), y_data/200, mode='same')
    ax.plot(x_data, avg_y)

ax.set_xlabel('Time (ps)')
ax.set_ylabel('Distance (nm)')
plt.axhline(y=0.3, color='black', linestyle='-')
plt.show()