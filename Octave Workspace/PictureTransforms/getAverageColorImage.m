function [res] = getAverageColorImage(image,write)
  res=image;
  for loop=1:size(image,1)
    for loop2=1:size(image,2)
      avg=mean(image(loop,loop2,:));
      for loop3=1:size(image,3)
        res(loop,loop2,loop3)=avg;
      endfor
    endfor
  endfor
  if(write==1)
    saveImage(res,"AV");
  end
end