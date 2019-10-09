A=imread('peppers.png');
B=uint8(zeros(size(A)));
A=~im2bw(A);
for i=1:size(A,1)

    for j=1:size(A,2)

        if(A(i,j)==1)

            B(i,j,:)=255;

        end

    end

end
im2bw(A);
C=uint8(ones(4 ,4, 3));

C(:,:,1)=C(:,:,1)*200;

C(:,:,2)=C(:,:,2)*0;

C(:,:,3)=C(:,:,3)*250;
%Find the mid point of the image and draw 3 dots.



midx=round(size(B,1)/2);

midy=round(size(B,2)/2)+30;

for i=1:size(C,1)

    for j=1:size(C,2)

B(midx+i+5,midy+j,:)=C(i,j,:);

B(midx+i-5,midy+j,:)=C(i,j,:);

B(midx+i+15,midy+j,:)=C(i,j,:);

    end

end

