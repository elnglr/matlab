clear all;
clc
%define variable names
max_guess = 3 ;
tol       = 0.1;
count     = 0;
%define the main goal by entering prompt 
prompt    = 'Please enter a value to guess values of x: ';

while (max_guess)
    x   = input(prompt); %asking for user input
    guess_value = x - cos(x); % our value will be x-cos(x) 
    if  abs(guess_value)< tol %try to find if guess value is less than the tolerance value
        fprintf("x - cos(x) = %4.2f is close to zero.\n", guess_value); %if the user reached to enough clossnes, let him know 
        count = count +1; %increment for the next result
        break;
    else
        max_guess = max_guess - 1; %determine the guess limit
        fprintf("Your guess is %4.2f , and you might try %d more times. \n" , guess_value, max_guess)
        if 	max_guess == 0 %when the user reached 3 times of guess number
            disp("you reached the guess limit."); % no guess right will be given afterwards
        end
    end
end