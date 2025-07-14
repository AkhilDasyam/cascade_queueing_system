# Cascaded Queuing System Simulation

This project simulates a cascaded M/M/1 queuing system with three sequential service stages (A, B, and C). Stage A includes two back-to-back services, while B and C follow with single-server queues. The system is analyzed under varying arrival and service rates to study queue behavior, response times, and performance limits.

---

## ⚙️ System Overview

- **Queue Model**: Cascaded M/M/1 system  
- **Stages**:
  - **Stage A**: Two sequential exponential services (μA1, μA2)
  - **Stages B & C**: Single exponential services (μB, μC)
- **Arrival Process**: Poisson (λ)
- **Tool**: MATLAB

---

## 🧠 Code Workflow

- `main.m`:  
  Initializes the simulation. Defines system parameters and coordinates calls to queue function modules for each stage.

- `Qx1.m`:  
  Simulates an M/M/1 queue with a Poisson arrival process and exponential service times.  
  **Inputs**: Mean arrival rate (λ), mean service rate (μ)  
  **Outputs**: Sojourn times, departure timestamps

- `Qx2.m`:  
  Modified M/M/1 simulation that uses actual inter-arrival intervals derived from the **departure times of the previous stage**, rather than generating arrivals from a Poisson process.  
  **Inputs**: Array of departure timestamps, mean service rate (μ)  
  **Outputs**: Sojourn times, updated departures

- `acNhist2.m`:  
  Utility to plot the **envelope (histogram)** of distributions for response times or service rates from simulation output.

---

## 📊 Simulation Parameters

- **Arrival Rates (λ)**: 0.5/min, 1.0/min, 5.0/min  
- **Thresholds (ε)**: 0.01 and 0.1  
- **Queue Sizes (K)**: 1 to 5  

---

## 📈 Features

- Cascaded simulation using real inter-arrival intervals
- Utilization and dimensioning analysis (ρ, μ, λ)
- Optimization and threshold-based system design
- Theoretical vs simulation-based evaluation

---

## 🔧 Extensions

- Extend to non-exponential service times (e.g., M/U/1)
- Add parallel or additional service stages
- Introduce priority queues or multi-class traffic

---

## 👥 Project members

- Venkat Sai Akhil Dasyam  
- Soumya Jandhyala  
- Manichandana Chowki  
