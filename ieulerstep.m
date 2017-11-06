function unew = ieulerstep(A, uold, h)
b = length(A(:,1));

dyn1 = A.*expm(A.*h)* uold;
unew = h*dyn1 + uold;
end