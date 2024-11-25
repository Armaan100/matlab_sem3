clc;
clear;

A = [1 1 1 1; 4 3 -1 6; 3 5 3 4];

n = size(A, 1); 
m = size(A, 2);

for i=1:n-1
    for j=i+1:n
        mul = A(j, i)/A(i, i);
        for k = 1:m
            A(j, k) = A(j, k)-mul*A(i, k); 
        end
    end
end


answers = zeros(1, n);
% initialized the x_n in answers
answers(n) = A(n, n+1)/A(n, n);

for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+answers(j)*A(i, j);
    end
    answers(i) = (A(i, n+1)-sum)/A(i, i);
end

answers


