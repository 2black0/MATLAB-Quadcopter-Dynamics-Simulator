% Ardy Seto P
% Quadcopter Model

clear all;
close all;
clc;

% init & variable quad
quadvar;
quadmodel;

% run from 0 to t_plot
while t_plot(counter-1)<max(t_plot);
  quadmodel;
end

% plot the result
quadplot;