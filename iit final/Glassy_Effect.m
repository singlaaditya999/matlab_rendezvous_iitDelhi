A=imread('peppers.png');
m=6;                                                                   

n=7;

Image=uint8(zeros([size(A,1)-m,size(A,2)-n,3]));


for i=1:size(A,1)-m

    for j=1:size(A,2)-n


        mymask=A(i:i+m-1,j:j+n-1,:);
%Select a pixel value from the neighborhood.

x2=ceil(rand(1)*m);

y2=ceil(rand(1)*n);

    Image(i,j,:)=mymask(x2,y2,:);

    end

end
figure,imshow(Image);
