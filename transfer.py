from scipy import signal
import matplotlib.pyplot as plt
import numpy as np


r0 = 50.0
rs = 330.0
ri = .1
l = .0000047
c = .0000000012




# Define Transfer Function
num = np.array([1,ri/l])
den = np.array([c,c*ri/l,1/l])
H = signal.TransferFunction(num , den)
print ('H(s) =', H)

w_start = 0.01
w_stop = 100000000000
step = 10000
N = int ((w_stop-w_start )/step) + 1
w = np.linspace (w_start , w_stop , N)

w, mag, phase = signal.bode(H,w)
plt.figure()
plt.title("Bode Plot")


plt.subplot (2, 1, 1)
plt.semilogx(w, mag) # Magnitude Plot plt.grid()
plt.ylabel("Magnitude (dB)")

plt.subplot (2, 1, 2)
plt.semilogx(w, phase) # Phase plot plt.grid()
plt.xlabel("Frequency (rad/sec)")
plt.show()
