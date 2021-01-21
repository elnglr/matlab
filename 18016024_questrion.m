%student no: 18016024
%helin geleri
%group 2
clear all
clc
syms  t; %because there should be only t value

v=(-0.25*t.^2)+36*t.^2- 760*t +4100
h= int(v) + 29; %take the integral of velocity to find altitude polynomial
%adding the constant 29 which is 24+5
%find the roots of t  when h is equal to 0.
a= solve(h);
for i=1:1:length(a)% if the roots are real
    if isreal(a(i)) == 1
         fprintf('\n when it hits the ground, t is:')
         result = double(a(i)); % when found the real root, display it 
         disp(result);
    end
end
grid on;
ezplot(h,[0,300]); %altitude plot

title('altitude plot');
figure;
grid on;
ezplot(v,[0,300]); %the plot of velocity
title('velocity plot');
figure;



