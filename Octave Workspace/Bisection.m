
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bisection Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A numerical root-finding algorithm

clear; clc
format long;

% set the tolerance and max iterations
tol = 1e-6
N = 1e2

% set the initial interval
a = -1
b = 0

% define the function
f = @(x) x^2-exp(x)

if( sign(f(a))*sign(f(b)) > 0 )
  prompt = 'Interval may not contain a root. Continue? (y/[n])';
  if( ~strcmp(input(prompt,'s'),'y') )
    return
  end
end

p = (b+a)/2
i = 1;
while( (i<N) && ((b-a)/2>tol) )    % max error is (b-a)/2
  sp = sign(f(p));
  if( sp==0 )               
    printf('Found exact root')
    break                             % found a root
  end
  sa = sign(f(a));
  if( sp*sa < 0 )                     % a and p have opposite signs
    b = p;                            % so there's a root in [a,p]
  else 
    a = p;                            % otherwise its in [p,b]
  end
  i = i+1;
  p = (b+a)/2
end

if( (i==N) && ((b-a)/2>tol) )
  printf('\nReached max iterations before desired tolerance.\n\n')
end




