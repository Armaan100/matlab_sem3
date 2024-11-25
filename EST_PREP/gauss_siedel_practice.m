clear;
clc;

A = [10 8 -3 1; 2 10 1 -4; 3 -4 10 1; 2 2 -3 10];
B = [16; 9; 10; 11];

n = size(A, 1);

X = zeros(1, n);

err = inf;

epsilon = 0.00001;

while err>epsilon
    X_OLD = X;
    for i=1:n
        sum = 0;
        for j=1:i-1
            sum = sum+A(i, j)*X(j);
        end

        for j=i+1:n
            sum=sum+A(i, j)*X_OLD(j);
        end

        X(i) = (B(i)-sum)/A(i, i);
    end

    err = max(abs(X-X_OLD));
end

X