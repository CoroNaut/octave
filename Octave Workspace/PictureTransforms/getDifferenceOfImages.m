function [res] = getDifferenceOfImages(image, image2, write)
  ##Get a picture showing the difference
  res=image;
  for loop=1:size(image,1)
    for loop2=1:size(image,2)
      for loop3=1:size(image,3)
        if(size(image2,3)==1)
          res(loop,loop2,loop3)=image(loop,loop2,loop3)-image2(loop,loop2,1);
        else
          res(loop,loop2,loop3)=image(loop,loop2,loop3)-image2(loop,loop2,loop3);
        endif
        if(res(loop,loop2,loop3)<0)
          res(loop,loop2,loop3)=255;
        endif
      endfor
    endfor
  endfor
  if(write==1)
    saveImage(res,"Diff");
  end
end