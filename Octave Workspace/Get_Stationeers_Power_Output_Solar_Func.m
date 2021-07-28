function[res] = Get_Stationeers_Power_Output_Solar_Func(func)
  powerAmount=@(x) max(-abs(((max(x*(3/10),18)-18)*(500/72))-500)+500,0);
  %% given time in seconds, will return power output of a flat panel
  daylight=0:1:1200;
  solarPanel = @(x) min(((x - min(x, 15))/1.5),100);
  %% the function to move the solar panels, outputs percentage of rotation 0 to 180
  