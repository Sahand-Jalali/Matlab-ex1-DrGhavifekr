function [P, S] = powerCalc(voltage, current, power_factor)
S = voltage .* current;
P = S .* power_factor;
end
