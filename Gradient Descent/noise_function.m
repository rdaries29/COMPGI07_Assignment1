function n = noise_function(mu,sigma)
% n = (1/sqrt(2*pi*(sigma)^2))*exp(-1*((x-mu)^2/(2*sigma^2)))
z = randn;
x = z*sigma+mu;
n = x;
