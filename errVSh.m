function errVSh(A, y0, t0, tf)



x = zeros(1,23);
y = zeros(1,23);


for i=5:27
    n = 2^i;
    h = (tf - t0)/n;
    [approx, err] = eulerint(A, y0, t0, tf, n);
    
    x(i) = h;
    y(i) = norm(err);
end

loglog(x,y);

end