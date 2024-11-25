clear all;
clear;

f = @(x)sin(x);

N = 10;
h = 1;


for i=-N:h:N
    if f(i)*f(i+h)<0 && i>=0
        fprintf('(%d, %d)', i, i+h);
        break;
    end
end

