function ierrVSh(A, y0, t0, tf)

N = 1024;


x = zeros(1,N);
y = zeros(1,N);


for i=100:N
    h = (tf - t0)/i;
    [approx, err] = ieulerint(A, y0, t0, tf, i);
    
    x(i) = h;
    y(i) = norm(err);
end

loglog(x,y);

end