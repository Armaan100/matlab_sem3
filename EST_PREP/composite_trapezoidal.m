clc;
clear;

f = @(x)(cos(x))^2;

a = -0.25;
b = 0.25;
n = 4;

h=(b-a)/n;

sum = 0;

for i=1:n-1
    x=a+h*i;
    sum=sum+2*f(x);
end

val=(f(a)+sum+f(b))*(h/2);

fprintf('Ans: %f\n', val);