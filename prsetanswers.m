
close all
clc
while(true)
index = input('Which answer do you want to see ==> '); 
fprintf('------Answer of the %g. question------ \n',index); 
switch(index)
case 1
disp('-------------------(i)-------------------');
IN_VECTOR = input('Enter a vector defined in brackets [-] ::> '); 
disp('-------------------(ii)------------------');
SUM = 0;
i = 1;
while(i <= numel(IN_VECTOR))
                SUM = SUM + IN_VECTOR(i);
    i = i + 1;
end
SUM disp('-------------------(iii)-----------------'); 
sumFunc = sum(IN_VECTOR);

case 2
FIRST_ELEMENT = input('Enter the 1st starting number ::> '); 
SECOND_ELEMENT = input('Enter the 2nd starting number ::> ');
SEQUENCE_SIZE = input('Enter the sequence length ::> '); 
FIBONACCI_SEQUENCE(SEQUENCE_SIZE) = 0;
FIBONACCI_SEQUENCE(1) = FIRST_ELEMENT;
FIBONACCI_SEQUENCE(2) = SECOND_ELEMENT;
for i = 3 : SEQUENCE_SIZE
    FIBONACCI_SEQUENCE(i) = FIBONACCI_SEQUENCE(i - 1) + FIBONACCI_SEQUENCE(i - 2);
end
            FIBONACCI_SEQUENCE;
        case 3
FIRST_ELEMENT = input('Enter the 1st starting number ::> '); SECOND_ELEMENT = input('Enter the 2nd starting number ::> '); SEQUENCE_SIZE = input('Enter the sequence length ::> '); FIBONACCI_SEQUENCE(SEQUENCE_SIZE) = 0;
            FIBONACCI_SEQUENCE(1) = FIRST_ELEMENT;
            FIBONACCI_SEQUENCE(2) = SECOND_ELEMENT;
            i = 3;
            while(i <= SEQUENCE_SIZE)
FIBONACCI_SEQUENCE(i) = FIBONACCI_SEQUENCE(i - 1) + FIBONACCI_SEQUENCE(i - 2);
i = i + 1;
end
            FIBONACCI_SEQUENCE;
        case 4
FIRST_ELEMENT = input('Enter the 1st starting number ::> '); 
SECOND_ELEMENT = input('Enter the 2nd starting number ::> ');
FIBONACCI_SEQUENCE(1) = FIRST_ELEMENT;
FIBONACCI_SEQUENCE(2) = SECOND_ELEMENT;
FIBONACCI_SEQUENCE(3) = FIBONACCI_SEQUENCE(1) + FIBONACCI_SEQUENCE(2); i = 3;
    while (abs(FIBONACCI_SEQUENCE(i) / FIBONACCI_SEQUENCE(i - 1) - FIBONACCI_SEQUENCE(i - 1) / FIBONACCI_SEQUENCE(i - 2)) > 0.001)
i = i + 1;
FIBONACCI_SEQUENCE(i) = FIBONACCI_SEQUENCE(i - 1) + FIBONACCI_SEQUENCE(i - 2);
end

FIBONACCI_SEQUENCE
end
    case 5
% It is up to you to take A as pre-defined value(e.g: 16)
A = input('Enter the number whose square root to be found::> '); INITIAL_GUESS = input('Enter the initial guess [X0] ::> '); CONVERGENCE = input('Enter the convergence criterion [EPS] ::> '); disp('Edmond Halley Algorithm For square root');
SQRT_OF_A = EdmondHalleySqrt(A, INITIAL_GUESS, CONVERGENCE) disp('MATLab built-in function sqrt(x) For square root'); SQRT_OF_A = sqrt(A)
    otherwise
    disp('Please enter a valid value!!');
disp('****************************************************'); control = input('Do you want to look another one?(Y/N)==> ','s'); if(control == 'y' | control == 'Y')
        clear
        close all
        clc
        continue
else
clear
close all
clc
disp('Bye bye..'); 
break
end
end
function OUT = EdmondHalleySqrt(A, X, EPS)
X_PREV = X;
Y = 0;
while (1)
Y = X_PREV ^ 2 / A;
X = (X_PREV / 8) * (15 - Y * (10 - 3 * Y)); if (abs(X - X_PREV) <= EPS)
OUT = X;
break  
end
X_PREV = X;
end
end