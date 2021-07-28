function [] = SlopeLearning()
  hold all;
  a=0:.1:100;
  x=0:.02:20;
  f=@(z,x) z*x 
  for k=0:1000
    plot(f(a,x));