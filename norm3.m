function value = norm3(v)
if ~isnumeric(v) || (~isvector(v) && ~isempty(v))
    error('Input must be a numeric vector.');
end
total = 0;
for k = 1:length(v)
    total = total + abs(v(k))^3;
end
value = total^(1/3);
end
