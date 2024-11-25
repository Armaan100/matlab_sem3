clear;
clc;

arr_x = [-2, -1, 1, 3];
arr_y = [-15, -4, 0, 20];

n = size(arr_x, 2);

l = ones(1, n);

x = 2;

for i=1:n
    for j=1:n
        if j~=i
            l(i) = l(i)*(x-arr_x(j))/(arr_x(i)-arr_x(j));
        end
    end
end

sum = 0;

for i=1:n
    sum=sum+l(i)*arr_y(i);
end

fprintf('Ans: %.2f\', sum);