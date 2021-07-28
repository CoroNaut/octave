function [] = plotImage(image)
  ##Plot an image
  plot3(image(:,:,1),image(:,:,2),image(:,:,3));
end