clc;
clear;

f = @(x)x^3+4*x^2-10;
g = @(x)(0.5)*(-x^3+10)^(1/2);

x0 = 2;
epsilon = 0.0001;

max_itr = 1000;

for i=1:max_itr
    x1 = g(x0);

    if(abs(x1-x0)<epsilon)
        fprintf("The root: %f, iterations: %d\n", x1, i);
        break;
    end
    x0 = x1;
end

if i==max_itr
    fprintf("Out of max itr\n");
end