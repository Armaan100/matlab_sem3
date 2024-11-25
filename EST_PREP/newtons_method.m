clear  all;
clear;

f = @(x) x^2-5*x+2;
df = @(x) (2*x-5);

x0 = 1;     %initial approximation
max_itr = 1000000;
epsilon = 0.0001;

for i=1:max_itr
    x1 = x0-(f(x0)/df(x0));

    if(abs(x1-x0)<epsilon)
        fprintf('Root is: %f\n', x1);
        fprintf('Iterations: %d\n', i);
        break;
    end
    x0 = x1;
end

if i==max_itr
    fprintf("Out of max itr");
end