
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Newton's Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A numerical root-finding algorithm

clear; clc
format long;

% set the tolerance and max iterations
tol = 1e-6
N = 1e2

% set an initial guess
p0 = -1

% define the function and derivative
f = @(x) x^2-exp(x)
df = @(x) 2*x - exp(x);

i=1;
while( i<N )
  if( df(p0) == 0 )
    printf('Failure: zero derivative.')
    break
  end
  p = p0 - f(p0)/df(p0)
  if( abs(p-p0) < tol )
    break
  end
  p0 = p;
  i = i+1;
end

if( i==N )
  printf('\nReached max iterations before desired tolerance.\n\n')
end




