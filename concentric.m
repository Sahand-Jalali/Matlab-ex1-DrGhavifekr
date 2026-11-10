clear;
clc;

center = [0 0];
radii = 1:5;
colors = 'bgrmk';
figure('Color', 'w');
hold on;
for k = 1:length(radii)
    [x, y] = getCircle(center, radii(k));
    plot(x, y, colors(k), 'LineWidth', 2);
end
hold off;
axis equal;
grid on;
title('Five concentric circles');
xlabel('x');
ylabel('y');
