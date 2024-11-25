clear;
clc;

arr_x = [-2, -1, 1, 3];
arr_y = [-15, -4, 0, 20];

n = size(arr_x, 2);

p = 2.25;

f = zeros(n);

product = ones(1, n);

%initialized first column of f
for i=1:k
    f(k, 1) = arr_y(k);
end

%filling up from the second column
for i=2:n
    for j=i:n
        f(j, i) = (f(j, i-1)-f(j-1, i-1))/(x(j) - x(j-i+1));
    end
end

%now fill the product array
for i=1:n
    for j=1:i-1
        product(i) = product(i)*(p-arr_x(j));
    end
end


sum = 0;

%calculating the answer
for i=1:n
    sum = sum+product(i)*f(i, i);
end

fprintf("Ans: %f", sum);