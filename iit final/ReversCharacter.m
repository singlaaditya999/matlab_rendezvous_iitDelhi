%To reverse the words position in a string
str='Lets Learn together... Happy Reading';
%str=fliplr(str);
len=length(str);
t='';
 while(len>0)
[token,str]=strtok(str);
     len=length(str);
     %token=fliplr(token);
     %t=[token,' ',t];
     t=[' ',token,t];
 end
 display(t);