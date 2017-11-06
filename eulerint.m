function [approx, err] = eulerint(A, y0, t0, tf, N)

h = (tf -t0)/N;
uold = y0;

for i = 1:N
    
    unew = eulerstep(A, uold, h);
    uold = unew;
end

approx = uold;
err = uold -expm(tf.*A)*y0;

end

