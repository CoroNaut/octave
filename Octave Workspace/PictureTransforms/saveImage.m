function [] =saveImage(img, prepend)
  regStr=strcat("(",prepend,"_");
  length=size(regStr);
  list=ls("*.jpg");
  preNum=0;
  for loop=4:size(list)
    strCheck=strsplit(list(loop,:),{"_",")"});
    if(size(strCheck,2)==3)
      if(strcmp(strCheck(1,1),strcat("(",prepend)))
        temp=str2double(strcat(strCheck(1,2),""))+1;
        if(temp>preNum)
          preNum=temp;
        endif
      endif
    endif
  endfor
  nameFile=strcat("(",prepend,"_",num2str(preNum),")");
  for c=0:1:9
    nameFile=strcat(nameFile,num2str(floor(rand(1)*10)));
  endfor
  nameFile=strcat(nameFile,".jpg")
  imwrite(img, nameFile);
end