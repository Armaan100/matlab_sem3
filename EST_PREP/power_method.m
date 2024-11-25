clc;
clear;

A = [1 1 0 0; 1 2 0 1; 0 0 3 3; 0 1 2 3];
n = size(A, 1);

x0 = [1; 1; 0; 1];  %initial guess

% nejanu beh moi kela ki khai jonmo hoisilu sobe hudhi thake lol... sob
% bostutei moi top koru from studies to sports to coding and coding
% competitions lol xd to exams and competitions hahaha lol

y = A*x0;

k1 = max(y);

epsilon = 0.0001;
err = inf;

x  = zeros(n, 1);

itr = 0;

while err>epsilon
    x = (1/k1).*y;
    y=A*x;
    k = max(y);
    err = abs(k1-k);
    k1 = k;
    itr=itr+1;
end