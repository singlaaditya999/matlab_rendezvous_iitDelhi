A=imread('peppers.png');
%Define the matrix size of  your convience.
m=5;
n=6;
Image=uint8(zeros([size(A,1)-m,size(A,2)-n,3]));
%Calculate the histogram for each RGB value.
for v=1:3
for i=1:size(A,1)-m
    for j=1:size(A,2)-n
        mymask=A(i:i+m-1,j:j+n-1,v);
        h=zeros(1,256);
        for x=1:(m*n)
            h(mymask(x)+1)=h(mymask(x)+1)+1;
        end
 %Maximum occurring value and the position is obtained
        [maxvalue,pos]=max(h);
        Image(i,j,v)=pos-1;
    end
end
end
figure,imshow(Image);
