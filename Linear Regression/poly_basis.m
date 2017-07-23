function PHI = poly_basis(base_order,X)

PHI = [ones(size(X,1),1)];

for i=2:base_order
    PHI = [PHI X.^(i-1)];
end


