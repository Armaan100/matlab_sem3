clc;
clear;

A = [10 8 -3 1; 2 10 1 -4; 3 -4 10 1; 2 2 -3 10];
B = [16; 9; 10; 11];

X = zeros(1, size(A, 1));
epsilon = 0.00001;

err = inf;

itr = 0;

while err>epsilon
    X_OLD = X;
    for i=1:size(A,1)
        sum=0;
        for j=1:i-1
            sum=sum+A(i, j)*X(j);
        end
        for j=i+1:size(A, 1)
            sum=sum+A(i, j)*X_OLD(j);
        end
        X(i)=(B(i)-sum)/A(i, i);
    end
    itr=itr+1;
    err = max(abs(X_OLD-X));
end

X