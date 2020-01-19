# Interface between OV760 cameras and monitor
This circuit is an hardware based interface that takes video signal from arduino-like **OV760 cameras** and send it to monitor through HDMI.
The project was implemented on **FPGA** (Altera Stratix IV). It was also used a DE4 board to handle multiple input/output camera connections, and a Terasic HDMI Transmitter Daughter Card for HDMI elaboration.

An **I2C interface** was implemented in hardware to properly control and program the correct signal taken from OV760.

It was used a **framebuffer** to manage the difference between raw data timing from camera and HDMI timing.

For final transmission of HDMI data to monitor, a **reference design** from Terasic was used as a top module, in which the custom logic was collocated.
