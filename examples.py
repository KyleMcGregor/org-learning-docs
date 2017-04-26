from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
from matplotlib import cm
import numpy as np
import matplotlib as mpl

if __name__ == '__main__':
    tut_plot1()

def main():
    tut_plot1()
#    simple_plot1()

    
def simple_plot1():
    """this is a simple plot taken from the examples
that came with the source package.
    """
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    X, Y, Z = axes3d.get_test_data(0.05)
    cset = ax.contour(X, Y, Z, cmap=cm.coolwarm)
    ax.clabel(cset, fontsize=9, inline=1)
    plt.show()




def tut_plot1():
    #i guess the dots force the type system to cast to decimal
    t = np.arange(0., 5., 0.2) 
    plt.plot(t, y, 'r--', t, t**2, 'bs', t, t**3, 'g^')
    plt.show()

    
    
