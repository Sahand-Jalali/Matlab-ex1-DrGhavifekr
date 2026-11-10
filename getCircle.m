function [x, y] = getCircle(center, r)
if ~isnumeric(center) || numel(center) ~= 2 || ~isreal(center) ...
        || any(~isfinite(center(:)))
    error('Center must contain two finite real coordinates.');
end
if ~isnumeric(r) || ~isscalar(r) || ~isreal(r) || ~isfinite(r) || r <= 0
    error('Radius must be a positive finite real scalar.');
end
t = linspace(0, 2 * pi, 361);
x = center(1) + r * cos(t);
y = center(2) + r * sin(t);
end
