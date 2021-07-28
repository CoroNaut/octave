function [res] = getDifferenceOfAvg(image,write)
  res=getDifferenceOfImages(image,getAverageColorImage(image,0),0);
  if(write==1)
    saveImage(res,"Dif_Avg");
  end
end