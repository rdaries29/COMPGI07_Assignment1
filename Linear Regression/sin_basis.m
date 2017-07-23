function PHI = sin_basis(base_order,X)

PHI = [];

for i=1:base_order
    PHI = [PHI sin((i*pi)*X)];
end
