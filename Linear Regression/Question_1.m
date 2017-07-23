%-------------------------------------------------------------------%
% Module: GI07 - Mathematical Programming & Research Methods
% Assignment : Homework 1
% Author : Russel Stuart Daries
% Student ID: 16079408
% Question: 1
% Section: Linear Regression
% Description: Linear Regression implementation
% ------------------------------------------------------------------%

close all
clear all
clc

%% 1.a

X = [1;2;3;4];
x_vector = 0:0.25:5;
y = [3;2;0;5];

%k=1
PHI_1 = [1;1;1;1];
w_iter_1 = inv(PHI_1'*PHI_1)*PHI_1'*y % Coefficients for eq 3.1b
y_1 = w_iter_1*ones(length(x_vector),1);

%k=2

PHI_2 = [ones(length(X),1) X];
w_iter_2 = inv(PHI_2'*PHI_2)*PHI_2'*y % Coefficients for eq 3.1b
y_2 = w_iter_2(1)+(w_iter_2(2)*x_vector); 

%k=3
PHI_3 = [ones(length(X),1) X X.^2];
w_iter_3 = inv(PHI_3'*PHI_3)*PHI_3'*y % Coefficients for eq 3.1b
y_3 = w_iter_3(1)+(w_iter_3(2)*x_vector)+(w_iter_3(3)*x_vector.^2); 

%k=4
PHI_4 = [ones(length(X),1) X X.^2 X.^3];
w_iter_4 = inv(PHI_4'*PHI_4)*PHI_4'*y
y_4 = w_iter_4(1)+(w_iter_4(2)*x_vector)+(w_iter_4(3)*x_vector.^2)+(w_iter_4(4)*x_vector.^3); 

%1a.
figure;
scatter(X,y)
hold on
plot(x_vector,y_1,'g')
hold on
plot(x_vector,y_2,'b')
hold on
plot(x_vector,y_3,'k')
hold on
plot(x_vector,y_4,'r')
grid on;
axis tight;
set(gcf, 'Color', 'w');
leg=legend('S','k=1','k=2','k=3','k=4','Location','Best')
set(leg,'FontSize',15)
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/simple_basis_4', '-eps')
close

%1b.
% Coefficients calculated in lines above when w_iter calculated

% 1c.

SSE_k1 = sum((y-(PHI_1*w_iter_1)).^2);
MSE_k1 = SSE_k1/length(y) % MSE for k=1

SSE_k2 = sum((y-(PHI_2*w_iter_2)).^2);
MSE_k2 = SSE_k2/length(y) % MSE for k=2

SSE_k3 = sum((y-(PHI_3*w_iter_3)).^2);
MSE_k3 = SSE_k3/length(y) % MSE for k=3

SSE_k4 = sum((y-(PHI_4*w_iter_4)).^2);
MSE_k4 = SSE_k4/length(y) % MSE for k=4
