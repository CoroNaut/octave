function [] = doLoop(image)
  
  for loop=10:10:150
    getChangeMapPicture(image,loop,1);
  end