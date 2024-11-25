clear;
clc;

f = @(x)x^2+2*x-10;
g = @(x)(10-2*x)^(1/2);

epsilon = 0.00001;

%intitial guess
x0 = 0;

err = inf;

for i=1:1000
    x1 = g(x0);

    err = x1-x0;
    
    if abs(err)<epsilon
        fprintf("Root: %f", x1);
        break;
    end
    x0 = x1;
end

fprintf("Out of iterations");


