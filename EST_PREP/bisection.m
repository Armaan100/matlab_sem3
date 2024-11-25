clear;
clear;

f = @(x) x*log10 (x)-1.2;

a = 1;
b = 100;

epsilon = 0.0001;

err = b-a;

i=1;

if f(a)*f(b)>0
    fprintf("Root does't lie in this interval");
else
    while(err>epsilon)
        c = (a+b)/2;
        if f(a)*f(c)<0
            b = c;
        else
            a = c;
        end
        err = abs(a-b);
        i=i+1;
    end

    fprintf('The root is: %d and iteration it came: %d', c, i);
end
