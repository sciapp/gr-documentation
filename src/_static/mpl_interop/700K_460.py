import numpy as np
import matplotlib.pyplot as plt
import mogli
import gr

molecules = mogli.read('700K_460.xyz')
angles = np.load('700K_460.npy')
lens = []

gr.setregenflags(gr.MPL_POSTPONE_UPDATE)

for t in range(100):

    plt.cla()
    fig = plt.subplot(133)
    fig.xaxis.set_ticks([-100, 0, 100])
    fig.yaxis.set_ticks([])
    plt.ylim([0, 1000])
    plt.hist(angles[t], 20, normed=0, facecolor='g', alpha=0.5)
    plt.show()

    gr.setviewport(0, 0.7, 0, 0.7)
    gr.setwindow(0.1, 0.9, 0.05, 0.85)
    mogli.draw(molecules[t], bonds_param=1.15, camera=((60, 0, 0),
                                                       (0, 0, 0),
                                                       (0, 1, 0)))

    gr.settextalign(gr.TEXT_HALIGN_CENTER, gr.TEXT_VALIGN_HALF)
    gr.text(0.35, 0.7, '700K (%.1f ps)  # of bonds: %d' %
            (t / 10.0, len(angles[t])))
    lens.append(len(angles[t]))
    if t > 0:
        gr.setwindow(0, 10, 3500, 5000)
        gr.setviewport(0.1, 0.6, 0.05, 0.1)
        gr.axes(1, 0, 0, 3500, 2, 0, 0.005)
        gr.polyline(np.arange(t + 1) / 10.0, lens)

    gr.updatews()
