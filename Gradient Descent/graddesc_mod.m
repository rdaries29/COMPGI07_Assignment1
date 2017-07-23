function soln = graddesc_mod(f, g, i,e, t)
% gradient descent
% f -- function
% g -- gradient
% i -- initial guess
% e -- step size
% t -- tolerance
soln = [i feval(f,i)];
gi = feval(g,i);
while(norm(gi)>t)  % crude termination condition
  i = i - e .* feval(g,i); 
  soln = [soln; i feval(f,i)]; % appending histories of vectors to each other.
  gi = feval(g,i)
end

