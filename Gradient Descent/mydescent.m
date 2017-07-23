function [x, x_history,J_history,iteration_count] = mydescent(A,b,guess,step,tol)
%-------------------------------------------------------------------%
% Module: GI07 - Mathematical Programming & Research Methods
% Assignment : Homework 1
% Author : Russel Stuart Daries
% Student ID: 16079408
% Question: 1
% Section: Gradient Descent
% Description: Gradient Descent function implementation
% --------- Input & Output Arguments------------%
% A - Matrix of coefficients
% b - Output values (Column vector)
% guess - Initial guess
% step - Step size
% tol - Tolerance
% ------------------------------------------------------------------%

m = size(b,2); %number of training examples
x = guess; % Initial guess (x_0)
n = size(x,2); % number of features
iteration_count = 0;

J_ini = ((A*x)-b)'*((A*x)-b); %Initial cost/ error of squared summations
J = J_ini;
J_history = [J];
x_history = [x];
grad_j =  2 * ((A'*A*x)-(A'*b));
while (norm(grad_j)>tol) % Repeat until stop criterion is reached.
    
    grad_j =  2 * ((A'*A*x)-(A'*b)); % Calculated the gradient, Delta_x
    temp = x - (step*grad_j); %Updated estimates of x
    x = temp;
    x_history = [x_history x]; %Append history of x estimate to vector
    J = ((A*x)-b)'*((A*x)-b);
    J_history = [J_history ;J]; %Append history of J(x) estimate to vector
    iteration_count=iteration_count+1; % Count the number of iterations requried to reach convergence.
    
end
