sz=400; 
rad=200; 
clear RGB 
RGB(1:sz,1:sz,1:3)=255; 
RGB=uint8(RGB);
[x y z]= find(RGB==255); 
xc=sz; 
yc=ceil((sz+1)/2);
for i=1:12 
    radius=(rad-10*i).^2; 
    r=find(((x-xc).^2+(y-yc).^2)<=radius); 
    for j=1:size(r,1) 
        if(mod(i,2)==0) 
             RGB(x(r(j)),y(r(j)),:)=255; 
        end 
             if(mod(i,3)==1) 
                  RGB(x(r(j)),y(r(j)),:)=0; 
             end 
    end 
end 
                    B=rgb2gray(RGB); 
                    D=edge(B); 
                    SE=strel('disk',2); 
                    D1=~imdilate(D,SE); 
                    
                   % I colored the image based on label 
                   [BW ,L]=bwlabel(D1,8); 
                   mycolor(:,1)=[128;128;255]; 
                   mycolor(:,2)=[215;0;0];
                   mycolor(:,3)=[255;128;0];
                   mycolor(:,4)=[255;255;0]; 
                   mycolor(:,5)=[0;128;64]; 
                   mycolor(:,6)=[10;160;220]; 
                   mycolor(:,7)=[0;0;70]; 
                   mycolor(:,8)=[65;0;128];
                   mycolor(:,9)=[128;128;255]; 
                   for n=1:9 
                       [r c]=find(BW==n); 
                       for i=1:size(r,1) 
                           RGB(r(i,1),c(i,1),:)=mycolor(:,n);
                       end 
                   end 
                           imshow(RGB);