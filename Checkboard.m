%Size of the square 

sz=45; 

%Number of rows 

xvalue=8; 

%Number of columns 

yvalue=8; 

%Intialize matrix A with zeros and matrix B with ones 

A=zeros([sz sz]); 

B=ones([sz sz]); 

clear C 

 m=sz; 

 n=1; 

 num=2; 

for i=1:xvalue 

    n1=1; 

    m1=sz; 

     

    for j=1:yvalue 

        if(mod(num,2)==0) 

        C(n:m,n1:m1)=A; 

        num=num+1; 

        else 

        C(n:m,n1:m1)=B; 

        num=num+1; 

        end 

         

        m1=m1+sz; 

        n1=n1+sz; 

    end 

    if(mod(yvalue,2)==0) 

    num=num+1; 

    end 

    n=n+sz; 

    m=m+sz; 

end 

imshow(C) 



