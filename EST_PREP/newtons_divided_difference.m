clear;
clc;

x = [1, 1.5, 2, 2.5];
f = [2.7183, 4.4817, 7.3891, 12.1825];

n = size(x, 2);

p = 2.25;

product = ones(1, n);
product

F = zeros(n);
F

for k=1:n
    F(k, 1) = f(k);
end
F

for i=2:n
    for j=i:n
        F(j, i) = (F(j, i-1)-F(j-1, i-1))/(x(j)-x(j-i+1));
    end
end
F

for i=1:n
    for j=1:i-1
        product(i) = product(i)*(p-x(j));
    end
end

sum = 0;

for i=1:n
    sum=sum+(F(i, i)*product(i));
end

fprintf('Ans: %.2f', sum);