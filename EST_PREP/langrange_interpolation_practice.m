clear;
clc;

arr_x = [0, 2, 4, 6, 8];
arr_y = [10, 11, 15, 18, 25];

n = size(arr_x, 2);

arr = ones(1, n);

p = 5;

for i=1:n
    for j=1:n
        if j~=i
            arr(i) = arr(i)*((p-arr_x(j))/(arr_x(i)-arr_x(j)));
        end
    end
end

sum=0;

for i=1:n
    sum=sum+(arr(i)*arr_y(i));
end

fprintf("Ans: %f", sum);