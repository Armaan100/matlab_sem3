clc;
clear all;

A = [1 1 1 1; 4 3 -1 6; 3 5 3 4];

n = size(A, 1); 
m = size(A, 2);

%Transformed matrix into it's Lower Triagular xyz
for i=1:n-1
    for j=i+1:n
        mul = A(j, i)/A(i, i);
        for k=1:m
            A(j, k) = A(j, k)-mul*A(i, k);
        end
    end
end

A

%Finding the solution
answers = zeros(n, 1);
answers(n) = A(n, n+1)/A(n, n);

for i=n-1:-1:1
    sum = 0;
    for j=i+1:n
        sum = sum+A(i,j)*answers(j);
    end
    answers(i) = (A(i, n+1)-sum)/A(i, i);
end

answers