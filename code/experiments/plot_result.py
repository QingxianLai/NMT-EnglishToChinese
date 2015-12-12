#!/usr/bin/python

import matplotlib.pyplot as plt
import numpy as np
import sys

def plot_results(result_file):
    train_errs = []
    dev_errs = []
    with open(result_file) as f:
        results = f.read().split("\n")
    
    idx = 0
    for i in range(len(results)):
        if results[i].startswith("Valid") and results[i+1].strip() != "":
            dev_errs.append(float(results[i].strip().split()[1]))
    
        if results[i].startswith("Epoch"):
            idx += 1
            if idx % 50 == 0:
                train_errs.append(float(results[i].strip().split()[5]))
    train_X = np.linspace(0,len(dev_errs), len(train_errs))
    plt.figure()
    plt.plot(train_X, train_errs, color="blue", label="Train")
    plt.plot(range(len(dev_errs)), dev_errs, marker="*", color="red", label="Valid")
    plt.xlabel("#Epoch")
    plt.ylabel("Log Likelihood")
    plt.grid()
    plt.legend()
    plt.savefig(result_file+"_plot.png")


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print "usage: python plot_result.py [hpc result file]"
    else:
        plot_results(sys.argv[1])
