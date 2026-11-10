clear;
clc;
close all;

%% Part a
[circle_x, circle_y] = getCircle([0 0], 1);
fprintf('getCircle generated %d points for a unit circle.\n', length(circle_x));

%% Parts b and c
concentric;
olympic;
