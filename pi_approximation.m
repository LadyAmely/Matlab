% 3. Comparison of execution time between loop-based and vectorized summation
% Task:
% Approximate the value of π using the formula π²/6 = ∑(1/n²) from n=1 to ∞.
% Implement two versions: one using a loop, and one using vectorized code.
% Compare the execution time of both methods.

clear variables;
clc;
close all;

n = 1000;  % Number of terms in the series

% --- First version: using a loop ---
tic;
p = 0;  % Initialize accumulator
for k = 1:n
    p = p + 1/k^2;
end
p = sqrt(6 * p);  % Approximate value of pi
disp("Loop version result:");
disp(p);
disp("Time:");
disp(toc);

% --- Second version: vectorized calculation ---
tic;
p = sqrt(6 * sum(1 ./ (1:n).^2));  % Vectorized approximation
disp("Vectorized version result:");
disp(p);
disp("Time:");
disp(toc);
