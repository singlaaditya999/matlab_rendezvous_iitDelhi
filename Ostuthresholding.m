%To threshold image without using graythresh function mygraythresh 
function mygraythresh 
global H Index; 
B=imread('tire.tif'); 
%Here I converted the 2d matrix to 1d matrix. 
V=reshape(B,[],1); 
%The histogram of the values from 0 to 255 is stored.
%For instance, G(1) contains the number of occurrence of the value zero in the image
 G=hist(V,0:255); 
  H=reshape(G,[],1); 
   %'index' is a 1 dimensional matrix ranging between 0 and 255
    Ind=0:255; 
     Index=reshape(Ind,[],1); 
 result=zeros(size([1 256])); 
 %To avoid more for loops I used only 1 for loop and a function to 
 %calculate the weight, mean and variance. 
 %Let me explain the foreground and the background for a value of ‘i’. 
%if ‘i’ value is 5 then the foreground values will be 0,1,2,3,4,5 
%and the background values will be 6 to 255. 

for i=0:255

     [wbk,varbk]=calculate(1,i); 

     [wfg,varfg]=calculate(i+1,255); 
     
     %After calculating the weights and the variance, 
     %the final computation is stored in the array ‘result’. 
     
       result(i+1)=(wbk*varbk)+(wfg*varfg); 
end
        %Find the minimum value in the array.
        
         [threshold_value,val]=min(result); 
                 tval=(val-1)/256; 
  %Now convert the image to binary with the calculated threshold value.
   bin_im=im2bw(B,tval); 
   figure,imshow(bin_im); 
   function [weight,var]=calculate(m,n)
   %Weight Calculation 
    weight=sum(H(m:n))/sum(H); 
    %Mean Calculation
    value=H(m:n).*Index(m:n); 
     total=sum(value); 
     mean=total/sum(H(m:n)); 
     if(isnan(mean)==1) 
         mean=0; 
     end 
     %Variance calculation.
      value2=(Index(m:n)-mean).^2; 
     numer=sum(value2.*H(m:n)); 
     var=numer/sum(H(m:n)); 
     if(isnan(var)==1) 
         var=0; 
     end 
   end
end