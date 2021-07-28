function [res] = getChangeMapPicture(image,change,write)
  
  res=image;
  dim=[size(image,1),size(image,2),3];
  change=round(change);
  timer=time;
  for loop1=1:dim(1)
    for loop2=1:dim(2)
      for loop3=1:dim(3)
        res(loop1,loop2,loop3)=min(res(loop1,loop2,loop3)+change,255);
      end
    end
  end
  disp(strcat("Took approximately,",num2str(time-timer)," seconds"))
  if(write==1)
    saveImage(res,"Changed");
  end