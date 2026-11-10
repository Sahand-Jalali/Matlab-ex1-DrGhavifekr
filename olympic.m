clear;
clc;

centers = [0 1; 1.1 0; 2.2 1; 3.3 0; 4.4 1];
colors = 'bykgr';
radius = 1;
figure('Color', 'w');
hold on;
for k = 1:5
    [x, y] = getCircle(centers(k, :), radius);
    plot(x, y, colors(k), 'LineWidth', 4);
end
hold off;
axis equal;
axis([-1.3 5.7 -1.3 2.3]);
axis off;
title('Olympic rings');
