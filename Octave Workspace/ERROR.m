function [retval] = ERROR (AbsVal, KnoVal)
  absoluteError=AbsVal-KnoVal
  relativeError=((abs(absoluteError/KnoVal))*100)