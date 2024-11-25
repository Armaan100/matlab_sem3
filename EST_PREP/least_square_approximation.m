clc;
clear;

x = [-2, -1, 0, 1, 2];
y = [15, 1, 1, 3, 19];

n = size(x, 2);

sum_x = 0;
sum_x2 = 0;

sum_f = 0;
sum_xf = 0;

for i=1:n
    sum_x = sum_x+x(i);
    sum_x2 = sum_x2+x(i)*x(i);
    sum_f = sum_f+y(i);
    sum_xf = sum_xf+x(i)*y(i);
end

A = [n sum_x; sum_x sum_x2];
B = [sum_f; sum_xf];

X = inv(A)*B;

fprintf("The best fit line is: y=%.2f+%x\n", X(1), X(2));
