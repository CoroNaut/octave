function [] = getSingleColorImage(image,rgb,write)
  %% image file in string form, rgb is int [0-3],
  %% write is bool [1] to write to file
  prepender="Gray";
  if (rgb==0)
    getSingleColorImage(image,1,1);
    getSingleColorImage(image,2,1);
    getSingleColorImage(image,3,1);
    return;
  elseif (rgb==1)
    destroyColor1=2;
    destroyColor2=3;
    prepender="R";
  elseif (rgb==2)
    destroyColor1=1;
    destroyColor2=3;
    prepender="G";
  elseif (rgb==3)
    destroyColor1=1;
    destroyColor2=2;
    prepender="B";
  else
    print("RGB needs to be 1,2,3 for R,G,B")
  end
  
  res=image;
  
  for loop=1:size(image,1)
    for loop2=1:size(image,2)
      res(loop,loop2,destroyColor1)=0;
      res(loop,loop2,destroyColor2)=0;
    end
  end
  if(write==1)
    saveImage(res,prepender);
  end