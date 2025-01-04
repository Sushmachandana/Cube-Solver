# Cube-Solver
Verilog-based Rubik’s Cube solving state machine
# Cube Solver Project

## Overview
This project implements a **Verilog-based state machine** to solve a **Rubik's Cube**. The state machine handles the cube's various stages of solving using defined moves and transitions.

---

## Features
- **State machine-driven cube solving.**
- **Supports moves:**
  - Clockwise, counterclockwise, and 180-degree rotations.
- **States include:**
  - **IDLE**: Waiting for start signal.
  - **INIT**: Initializes the cube.
  - **SOLVE_CROSS**: Solves the cross.
  - **SOLVE_CORNERS**: Solves corners.
  - **SOLVE_MIDDLES**: Solves middle edges.
  - **FINALIZE**: Final adjustments and completion.

---

## State Diagram
- **IDLE** -> **INIT** -> **SOLVE_CROSS** -> **SOLVE_CORNERS** -> **SOLVE_MIDDLES** -> **FINALIZE** -> **IDLE**

---

## Files Included
1. **`cube_solver.v`**: Main Verilog module for solving the cube.
2. **`cube_solver_tb.v`**: Testbench for verifying functionality.
3. **State Diagram**: Visual representation of transitions.

---

## Explanation of Workflow
### 1. **IDLE:**
- The state machine starts in the **IDLE** state and waits for the `start` signal.
- Transitions to **INIT** when the `start` signal is received.

### 2. **INIT:**
- Initializes the cube to a scrambled state.
- Prepares the cube for solving and transitions to **SOLVE_CROSS**.

### 3. **SOLVE_CROSS:**
- Applies a sequence of moves to solve the cross on the cube.
- Moves to **SOLVE_CORNERS** after completion.

### 4. **SOLVE_CORNERS:**
- Solves the corners using predefined move sequences.
- Advances to **SOLVE_MIDDLES** when done.

### 5. **SOLVE_MIDDLES:**
- Solves the middle edges of the cube.
- Transitions to **FINALIZE** upon solving.

### 6. **FINALIZE:**
- Performs final adjustments to ensure the cube is solved.
- Sets the `done` signal and returns to **IDLE**.

---

## Simulation and Testing
### Test Cases:
1. Verify state transitions from **IDLE** to **FINALIZE**.
2. Confirm correct move outputs for each state.
3. Ensure the `done` signal is asserted upon completion.

### How to Run:
1. Load `cube_solver.v` and `cube_solver_tb.v` into a Verilog simulator (e.g., **ModelSim**, **Vivado**).
2. Compile and run the simulation.
3. Observe the output transitions and verify functionality.

---

## Future Improvements
- **Implement advanced cube-solving algorithms** (e.g., CFOP or Kociemba).
- **Add real-time visualization** of cube states during the simulation.
- **Enhance modularity** for scalability to larger puzzles.

---

## Author
**Eragam Reddy Sushma Chandana**

