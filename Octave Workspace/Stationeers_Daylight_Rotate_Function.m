function [] = Stationeers_Daylight_Rotate_Function()
  daylight=0:1:180;
  f = @(x) min(((x - min(x, 15))/1.5),100);
  plot(daylight,f(daylight));