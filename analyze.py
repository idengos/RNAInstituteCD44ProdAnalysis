import matplotlib.pyplot as plt
import numpy as np
import sys


# RUN dist_graphs.sh first to .xvg files 
# takes in xvg file
data = np.loadtxt(sys.argv[1], comments=["#", "@"])

# fig, ax = plt.subplots()
# x_data = data[0]
# for y_data in data[1:]:
#     ax.plot(x_data, y_data)
#
# ax.set_xlabel('Time (ps)')
# ax.set_ylabel('Distance (nm)')
# plt.axhline(y=0.3, color='black', linestyle='-')
# plt.show()

picosec = data[:,0]
APair = data[:,1]
BPair = data[:,2]
CPair = data[:,3]
AlphaPair = data[:,4]
BetaPair = data[:,5]


for i in range(len(APair)):
    if APair[i] < 0.3 :
        if BPair[i] < 0.3 :
            if CPair[i] < 0.3 :
                print(picosec[i])

print("end of first set")

for j in range(len(AlphaPair)):
    if AlphaPair[j] < 0.3:
        if BetaPair[j] < 0.3:
            print(picosec[j])

print("end of second set")
