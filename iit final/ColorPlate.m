%This is my first attempt on designing a color palette. Of course, this looks quite simple. 
%The palette contains primary colors R,G and B. 
%size of the square 

sz=50; 

%Number of rows 

xvalue=10; 

%Number of Columns 

yvalue=10; 

%Initialize the matrix with zeros 

RGB=zeros([sz+2 sz+2 3]); 

%The image shade from darker to lighter.Instead of 255 give values lesser than 255 and see the different shades

v=round(255/yvalue); 
clear C 
 m=sz+2; 
 n=1; 

 %The same color repetition. If you specify val=1 then the colors  R,G,B will occur repeatedly 

 val=floor(xvalue/3); 
    inc=1; 

for i=1:xvalue 
    n1=1; 
   m1=sz+2; 
    if(inc==1) 

        %Red color will be displayed 

    num1=20; 

    num2=1;

    num3=1; 

    elseif(inc==2) 

        %Green color will be displayed 

    num1=1; 
    num2=20; 
    num3=1; 
    elseif(inc==3) 
        
    %Blue color will be displayed 
    num1=1; 
    num2=1; 
    num3=25;
    end
    for j=1:yvalue

    RGB(2:sz+1,2:sz+1,1)=num1*v*j; 
    RGB(2:sz+1,2:sz+1,2)=num2*v*j; 
    RGB(2:sz+1,2:sz+1,3)=num3*v*j;       

    C(n:m,n1:m1,:)=RGB;     
        m1=m1+sz; 
       n1=n1+sz;      
        end 

  n=n+sz; 
  m=m+sz; 
  if(mod(i,val)==0)  
        inc=inc+1;
        if(inc>3)
            inc=1; 
        end 
    end 
end

C=uint8(C); 
imshow(C); 