% 2. Prime Factorization of a Number
% Task:
% Using a while loop and a for loop, 
% write a program that decomposes a given integer greater than 1 
% into its prime factors and displays them one by one.


clear variables;
clc;
close all;

n = input("Enter an integer greater than 1: ");

if n < 2
   disp('Please enter an integer greater than 1.');
else
    while n > 1
        for i = 2:n
            if mod(n, i) == 0
                disp(i);    
                n = n / i;
                break;     
            end
        end
    end
end
