function [ a1, a0 ] = linearregression( x,y )
%LINEARREGRESSION Function for linear regression. This function
%   plots x,y values as circular dots and also draws the regression
%   line on the same plot, and returns the slope and y-intercept.
%
%   INPUTS:
%       x - independent(predictor) variable
%       y - dependent(outcome) variable
%
%   OUTPUTS:
%       a1 - slope
%       a0 - y-intercept
% 
%   EXAMPLE:
%       x = rand(100,1).*10;
%       y = 2 + 3.5 * x + randn(100,1);
%       [a1, a0] = linearregression(x,y);
%
% Nükhet Aksoy
% aksoynukhet@gmail.com
%

    % Check validity of input data
    if nargin<2
        help linearregression;
        return;
    elseif isempty(x) || isempty(y)
        error('Input data is empty!');
    elseif size(x) ~= size(y)
        error('Input data dimensions must agree');
    end
    
    % Length of input x
    n = length(x);
    
    % Calculate the slope and y-intercept
    a1 = (n*sum(x.*y)-sum(x)*sum(y))/(n*sum(x.^2)-(sum(x))^2);
    a0 = mean(y) - a1*mean(x);

    % Linear regression line equation
    yCalc = a0 + a1*x;
    
    % Plotting on the same figure
    hold on;
    
    % Enable grid on plot
    grid on
    
    % Plot x,y as circular red dots
    plot(x,y,'ro');
    
    % Plot linear regression line
    plot(x,yCalc)
    
    % Display legend
    legend('Data','Linear Regression Line','Location','best');
    
    hold off;
    
end

