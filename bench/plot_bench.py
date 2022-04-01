"""
Plotting the benchmarks for DeDisp.jl and PRESTO.
"""

import humanize
import numpy as np
import proplot as pplt
import matplotlib.pyplot as plt

plt.rcParams.update({"font.sans-serif": "JetBrainsMono Nerd Font"})

file_sizes = np.array([78, 156, 312, 625, 1.2e3, 2.5e3, 5.0e3]) * 1e6
presto_times = np.array([281.7, 548.4, 995.3, 2.154e3, 4.224e3, 9.488e3, 18.083e3])
presto_errors = np.array([6.6, 13.6, 29.9, 74.0, 72.0, 368.0, 132.0])
x = np.arange(file_sizes.size)
w = 0.35

fig = pplt.figure(share="labels", refwidth=6, refaspect=1.0)
ax = fig.subplots()

presto_bar = ax.bar(
    x,
    presto_times,
    yerr=presto_errors,
    align="center",
    ecolor="black",
    capsize=10,
    alpha=0.5,
    width=w,
)

ax.set_xticks(x)
ax.yaxis.grid(True)
ax.set_title("PRESTO")
ax.bar_label(presto_bar, padding=3)
ax.set_xticklabels([humanize.naturalsize(file_size) for file_size in file_sizes])


ax.format(
    xlabel="File size.",
    suptitle="PRESTO Benchmarks",
    ylabel="Time, in milliseconds.",
)

fig.save("bench_plot.png", dpi=150.0)
