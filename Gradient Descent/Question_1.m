%-------------------------------------------------------------------%
% Module: GI07 - Mathematical Programming & Research Methods
% Assignment : Homework 1
% Author : Russel Stuart Daries
% Student ID: 16079408
% Question: 1
% Section: Gradient Descent
% Description: Familiarise with MATLAB, implement Gradient descent and
% understand mathematical reasoning.
% ------------------------------------------------------------------%

close all
clear all
clc

%% a.
x_gv = linspace(0,5,15);
y_gv = linspace(0,5,15);

% 3-D Plot of f(x,y)
[X,Y] = meshgrid(x_gv,y_gv);
figure;
mesh(X,Y,fcarg(X,Y))
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)
zlabel('f(x,y)','FontSize',15)
set(gca,'fontsize',17);
set(gcf, 'Color', 'w');

export_fig '/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/f_xy_3d' '-eps'
close
local_min = graddesc('fc','dfc',[0,0],0.1,0.1)


%% b.

%i - Modified gradient descent function
soln = graddesc_mod('fc','dfc',[0,0],0.01,0.01);

% ii - 3-D rendering of Gradient Descent methods movement to solution.
plot3(soln(:,1),soln(:,2),soln(:,3))
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)
zlabel('f(x,y)','FontSize',15)
view([-67.1 28.4]);
grid on;
set(gcf, 'Color', 'w');
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/grad_desc_3d', '-eps')
close
% iii - X-Y Projection of Gradient Descent
figure;
plot(soln(:,1),soln(:,2))
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)
grid on
set(gcf, 'Color', 'w');
axis tight;
export_fig('/Users/russeldaries/Documents/University College London/Computer Science/Courses/Mathematical Methods for Machine Learning/Assignments/Assignment 1/Report/LaTeX/report/Figures/grad_desc_2d', '-eps')
close
