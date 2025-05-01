# matlab\_quadcopter

A simple quadcopter model and simulator in MATLAB & Octave, based on Francesco Sabatino’s KTH thesis.
Simulates free‑flight hover dynamics and plots position & attitude over time.

---

## 📚 Reference

Francesco Sabatino, *“A Unified Approach to Quadcopter Control”*, Master’s Thesis, KTH, 2018.
[Download PDF](https://www.kth.se/polopoly_fs/1.588039.1550155544!/Thesis%20KTH%20-%20Francesco%20Sabatino.pdf)

---

## 📐 Core Equations

Based on the rigid‑body dynamics and rotor thrust/torque inputs:

![Quadcopter equations of motion](https://raw.githubusercontent.com/2black0/matlab_quadcopter/master/quad_equation.jpg)
![Control input diagrams](https://raw.githubusercontent.com/2black0/matlab_quadcopter/master/control_input.jpg)

---

## 🔧 Prerequisites

* **MATLAB** R2018a or newer **OR** **Octave** ≥ 4.0
* No additional toolboxes required for basic simulation.
* Add the project folder (and subfolders) to your MATLAB/Octave path.

---

## 🗂️ File Structure

```
matlab_quadcopter/
├── README.md          # this file
├── LICENSE            # (e.g. MIT)
├── quadvar.m          # parameter definitions & initial conditions
├── quadmodel.m        # discrete‑time dynamics update
├── quadrun.m          # main script: init → simulate → plot
├── quadplot.m         # plotting routine
└── control_input.jpg  # diagram of control inputs (thrust/torques)
```

---

## ▶️ Usage

1. **Clone** or download this repo.
2. Launch MATLAB or Octave and **set the working folder** to `matlab_quadcopter/`.
3. Simply run:

   ```matlab
   quadrun
   ```
4. After the simulation (30 s by default), two plots will be saved:

   * `figure1.jpg`: X, Y, Z trajectories
   * `figure2.jpg`: Roll (φ), Pitch (θ), Yaw (ψ) angles

---

## ⚙️ How It Works

1. **quadvar.m**

   * Defines physical parameters (mass *m*, arm length *l*, thrust coefficient *b*, drag *d*, inertias *Iₓ, Iᵧ, I\_z*).
   * Sets initial rotor speeds *w₁–w₄* (hover) and simulation time step.
2. **quadmodel.m**

   * Computes total thrust *u₁* and torques *u₂–u₄* from rotor speeds.
   * Applies Newton–Euler equations for linear (*ẍ, ÿ, z̈*) and angular (*φ̈, θ̈, ψ̈*) acceleration.
   * Integrates state forward with simple Euler step.
3. **quadplot.m**

   * Creates subplots for position and attitude vs. time.
   * Saves figures as JPG for quick inspection.

---

## ✨ Extensions

* **Custom Trajectories**: modify `w1–w4` as functions of *t*.
* **PID Control**: implement a controller in `quadmodel.m` to track setpoints.
* **3D Animation**: use `plot3` or `patch` to animate the quadcopter frame.
* **Live Script**: convert `quadrun.m` into a MATLAB Live Script for interactive parameter tweaking.

---

## 📄 License

[MIT License](LICENSE)

---

Enjoy flying (in simulation)! 🚁
