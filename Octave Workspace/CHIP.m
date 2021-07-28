function [res] = CHIP(rnd,t,x)
if x == 0
  w == 0;
else
  ee = fix(log10(abs(x))); 
  if abs(x) > 1
    ee = ee + 1;
  end;
  if rnd == 1
    w = round(x*10^(t-ee))*10^(ee-t); 
  else 
    w = fix(x*10^(t-ee))*10^(ee-t); 
  end;
end;
res = w;
