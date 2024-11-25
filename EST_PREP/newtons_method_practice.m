clear;
clc;

f = @(x) x^2-5*x+2;
df = @(x) (2*x-5);

x0 = 1; %intital guess

epsilon = 0.0001;

for i=1:1000
    x1 = x0 - (f(x0)/df(x0));
    err = abs(x1-x0);

    if err<epsilon
        fprintf('Root: %f', x1);
        break;
    end
    x0 = x1;
end