%-------------------------------------------------------------------%
% Module: GI07 - Mathematical Programming & Research Methods
% Assignment : Homework 1
% Author : Russel Stuart Daries
% Student ID: 16079408
% Question: 2
% Section: Gradient Descent
% Description: Implement Gradient descent main file.
% ------------------------------------------------------------------%

close all
clear all
clc


%% 2.
% (a.) Complete function mydescent
% Shown in mydescent.m file

% (b.) Solve system of linear equations
A = [1 -1;1 1;1 2];
b = [1;1;3];
tol = 0.0001;
step = 0.01;
guess = [1;1];

[x, x_history,J_history,iteration_count] = mydescent(A,b,guess,step,tol);


%(c.)
% Plot of Iteration count vs cost (J(x))
iteration_history = 0:1:iteration_count;
figure
plot(iteration_history,J_history)
xlabel('Iterations','FontSize',15)
ylabel('J(x)','FontSize',15)
% zlabel('F(X,Y)','FontSize'?,15)
grid on;
set(gcf, 'Color', 'w');
axis tight;
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/iteration_vs_cost', '-eps')
close

% Plot of convergence of x vector to final x_1 and x_2 values
figure
plot(x_history(1,:),x_history(2,:))
xlabel('x1','FontSize',15)
ylabel('x2','FontSize',15)
grid on;
axis tight;
set(gcf, 'Color', 'w');
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/converge', '-eps')
close

% Plots of x_0,x_1,x_2 values vs Iteration count
figure
plot(iteration_history,x_history(1,:))
xlabel('Iterations','FontSize',15)
ylabel('x1','FontSize',15)
grid on;
set(gcf, 'Color', 'w');
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/x0_plot', '-eps')
close
% 
figure
plot(iteration_history,x_history(2,:))
xlabel('Iterations','FontSize',15)
ylabel('x2','FontSize',15)
grid on;
set(gcf, 'Color', 'w');
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/x1_plot', '-eps')
close
% 
% figure
% plot(iteration_history,x_history(3,:))
% xlabel('Iterations','FontSize',15)
% ylabel('x3','FontSize',15)
% grid on;
% set(gcf, 'Color', 'w');
% export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/x2_plot', '-eps')
% close


%% 3. Plotting the functions given in each of the subsequent questions.
%a.
x = -10:0.5:10;
figure(1)
f1 = abs(x-1).^3;
plot(x,f1)
grid on
xlabel('x','FontSize',15)
ylabel('f(x)','FontSize',15)
set(gcf, 'Color', 'w');
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/f1_plot', '-eps')
close

%b.
figure(2)
f2 = sqrt(abs(x-1));
plot(x,f2)
grid on
xlabel('x','FontSize',15)
ylabel('f(x)','FontSize',15)
set(gcf, 'Color', 'w');
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/f2_plot', '-eps')
close

%c.
figure(3)
f3 = x.^4+(5*x.^2);
plot(x,f3)
grid on
xlabel('x','FontSize',15)
ylabel('f(x)','FontSize',15)
set(gcf, 'Color', 'w');
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/f3_plot', '-eps')
close




