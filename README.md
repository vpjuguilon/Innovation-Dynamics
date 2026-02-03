# Innovation-Dynamics

Applying classical mechanics and phase space analysis to global patent datasets to detect innovation hype cycles and saturation.



\# Patent Kinematics: The Physics of Innovation



\[!\[License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

\[!\[Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/release/python-390/)

\[!\[Status: Active](https://img.shields.io/badge/Status-Active-success.svg)]()



\*\*Patent Kinematics\*\* is a data science framework that treats global innovation not as a static count of documents, but as a dynamic physical system. By applying kinematic equations to patent datasets (Google Patents Public Data), this tool generates \*\*Phase Space Trajectories\*\* ($v$ vs $a$) to identify technology lifecycles, hype bubbles, and stagnation points.



\## 🚀 The Concept



Standard patent analysis relies on bar charts (Position $x$). This project calculates the derivatives of innovation to reveal the hidden "forces" driving the market.



| Variable | Physics Analog | Innovation Analog |

| :--- | :--- | :--- |

| \*\*Position ($x$)\*\* | Distance Traveled | \*\*Cumulative Knowledge\*\* (Total Patent Families) |

| \*\*Velocity ($v$)\*\* | Speed ($\\dot{x}$) | \*\*New Filings per Year\*\* (Market Activity) |

| \*\*Acceleration ($a$)\*\* | Force ($\\ddot{x}$) | \*\*Year-over-Year Growth\*\* (Hype / Saturation) |



By plotting \*\*Velocity vs. Acceleration\*\*, we generate a "Hysteresis Loop" that visually distinguishes between a booming technology (top-right quadrant) and a dying one (bottom-right quadrant), even if they have the same number of annual filings.



\## 📊 Features



\* \*\*BigQuery Integration:\*\* SQL queries optimized for the Google Patents Public Dataset (`patents-public-data.patents.publications`).

\* \*\*"Unit of Innovation" Logic:\*\* strictly filters for simple patent families and priority dates to eliminate administrative noise (dupes/continuations).

\* \*\*Kinematic Engine:\*\* Python functions to calculate smoothed velocity and acceleration vectors.

\* \*\*Unified Dashboard:\*\* Generates 2-panel visualizations:

&nbsp;   \* \*\*Panel A (Real Phase Space):\*\* $x$ vs $v$ (The S-Curve Derivative).

&nbsp;   \* \*\*Panel B (Lifecycle Phase Space):\*\* $v$ vs $a$ (The Hype Cycle Loop).

\* \*\*Lag Correction:\*\* Automatic filtering of the 18-month publication lag to prevent false "crash" signals.



\## 📂 Project Structure



```bash

patent-kinematics/

├── data/

│   └── example\_counts.csv    # Sample data for G06N (AI) and B60W (Autonomous Vehicles)

├── sql/

│   └── extract\_velocity.sql  # BigQuery logic for family deduplication \& date filtering

├── src/

│   ├── kinematics.py         # Core physics engine (smoothing \& differentiation)

│   └── visualizer.py         # Matplotlib/Seaborn dashboard generators

├── notebooks/

│   └── phase\_space\_demo.ipynb # Jupyter notebook for interactive exploration

├── output/

│   └── G06N\_phase\_space.png  # Generated plots

├── requirements.txt

└── README.md

