function unew = eulerstep(A, uold, h)
b = length(A(:,1));
unew = (eye(b)+h.*A)* uold;
end