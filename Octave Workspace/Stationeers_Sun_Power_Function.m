function [ret] = Stationeers_Sun_Power_Function(pl)
  daylight=0:1:2400;
  f=@(x) max(-abs((x*1.25)-750)+500,0)*.974885;
  %f=@(x) max(-abs(((max(x*(3/10),18)-18)*(500/72))-500)+500,0);
  if(pl==1)
    plot(f(daylight));
  end
  ret=f;