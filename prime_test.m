% 1. Prime number check
% Task:
% Write a program that reads an integer and checks 
% whether it is a prime number. 
% If it is, display the appropriate message.

clear variables;
clc;
close all;

n = input("Enter a number: ");
is_prime = true;
i = 2;

while(i <= n - 1)
    if mod(n, i) == 0
        is_prime = false;
        break;
    end
    i = i + 1;
end

if is_prime
    disp("The number is a prime number.")
else
    disp("The number is not a prime number.")
end
