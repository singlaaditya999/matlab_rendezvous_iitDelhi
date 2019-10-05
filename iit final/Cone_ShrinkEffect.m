%The image shrinks towards the center, forming a cone effect. Here, 
%I first found the mid point of the image, since the image expands from the center. 
%Then the angle and the radius of the points are found by converting into polar co-ordinates from Cartesian.  
%The square root (radius * K) is obtained, where K  can be changed to make the image size differ.

%Again convert from polar to Cartesian and display the final image.

A=imread('peppers.png');
B=uint8(zeros(size(A)));

figure,imshow(A);

midx=ceil((size(A,1)+1)/2);

midy=ceil((size(A,2)+1)/2);

K=100;

x2=zeros([size(A,1) size(A,2)]);

y2=zeros([size(A,1) size(A,2)]);

for i=1:size(A,1)

    x=i-midx;

    for j=1:size(A,2)

   [theta,rho]=cart2pol(x,j-midy);

       sqtrho=sqrt(rho*K);
  
        [l,m]=pol2cart(theta,sqtrho);

        x2(i,j)=ceil(l)+midx;

        y2(i,j)=ceil(m)+midy;
     
    end

end        

        % CHECK 1<=x2<=size(A,1) and 1<=y2<=size(A,2)

        x2(x2<1)=1;

        x2(x2>size(A,1))=size(A,1);

        y2(y2<1)=1;

        y2(y2>size(A,2))=size(A,2);
     
        for i=1:size(A,1)

            for j=1:size(A,2)

                B(i,j,:)=A(x2(i,j),y2(i,j),:);

            end

        end
 figure,   imshow(B);