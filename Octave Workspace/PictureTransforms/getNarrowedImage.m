function [] = getNarrowedImage(image, lower, upper, write)
  ##Narrow the visibal band of the image
  res=image;
  for loop=1:size(image,1)
    for loop2=1:size(image,2)
      for loop3=1:size(image,3)
        res(loop,loop2,loop3)=min(max(res(loop,loop2,loop3),lower),upper);
      endfor
    endfor
  endfor
  if(write==1)
    saveImage(res,strcat("Na_",num2str(lower),"_",num2str(upper)));
  end
end