function [] = getRatioColorImage(image, diff, write)
  ##Max Annihilation function
  res=image;
  for loop=1:size(image,1)
    for loop2=1:size(image,2)
      c1=res(loop,loop2,1);
      c2=res(loop,loop2,2);
      c3=res(loop,loop2,3);
      if(c1+diff>c2&&c1+diff>c3)
        res(loop,loop2,2)=0;
        res(loop,loop2,3)=0;
      elseif(c2+diff>c1&&c2+diff>c3)
        res(loop,loop2,1)=0;
        res(loop,loop2,3)=0;
      elseif(c3+diff>c1&&c3+diff>c2)
        res(loop,loop2,1)=0;
        res(loop,loop2,2)=0;
      endif
    end
  end
  if(write==1)
    saveImage(res,"MaxAnnih");
  end
end