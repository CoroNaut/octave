  function [] = GoldenRatioFibonacci()
  
  clear; clc;
  
  tol=1e100;
  num=100;
  ite=1;
  x1=1;
  x2=1;
  prevRatio=0;
  ratio=x2/x1;
  while(ceil(ratio*tol)!=ceil(prevRatio*tol))
    ite=ite+1;
    if(ite>=num)
      break;
    end
    x3=x2+x1;
    x1=x2;
    x2=x3;
    prevRatio=ratio;
    ratio=x2/x1
  end