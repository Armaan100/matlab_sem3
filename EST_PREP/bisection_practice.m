clear;
clc;

f = @(x)x^2+2*x-10;

epsilon = 0.00001;

a = 0;
b = 10;

err = b-a;
itr = 1;

if f(a)*f(b)<0
    while err>epsilon
        c = (a+b)/2;
        if f(a)*f(c)<0
            b = c;
        else
            a = c;
        end
        err = b-a;
    end
else
    fprintf('No');
end

fprintf('Ans: %f', c);