# MATLAB Functions

This repository contains some useful MATLAB functions.

Functions
* Linear Regression
* ...

# Linear Regression
  Function for linear regression. This function plots x,y
  values as circular dots and also draws the regression 
  line on the same plot, and returns the slope and y-intercept.
  INPUTS:
      x - independent(predictor) variable
      y - dependent(outcome) variable
  
  OUTPUTS:
      a1 - slope
      a0 - y-intercept
  
  USAGE:
      [a1, a0] = linearregression(x,y);
  
  EXAMPLE:
      x = rand(100,1).*10;
      y = 2 + 3.5 * x + randn(100,1);
      [a1, a0] = linearregression(x,y);
