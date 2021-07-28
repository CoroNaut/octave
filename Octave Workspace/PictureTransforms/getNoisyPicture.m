function [res] = getNoisyPicture(image,noise,write)
  
  res=image;
  noise=round(noise);
  
  for loop=1:size(image,1)
    for loop2=1:size(image,2)
      for loop3=1:3
        res(loop,loop2,loop3)=mod(res(loop,loop2,loop3)+(((rand*2)-1)*noise),255);
      endfor
    endfor
  endfor
  
  if(write==1)
    saveImage(res,"Noisy");
  end