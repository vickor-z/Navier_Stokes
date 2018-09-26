The code uses mixed finite element method to calculate the Navier_Stokes equations.
All codes are base on deal.ii-8.1.0 and AFEPack.

Input is the mesh based on Easymesh. 
Output is the x-velocity, y-velocity and pressure. You can use opendx to draw it.

The viscosity(1/Re) is defined in the top. The tolerance can be set before iteration.
