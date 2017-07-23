function y_est = basis_calc(w,x)

y_est = zeros(length(x),1);

for i=2:length(w)
    y_est = y_est+(w(i)*x.^(i-1));
end

y_est = y_est + w(1);