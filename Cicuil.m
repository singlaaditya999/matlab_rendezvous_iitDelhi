sz=300; 
rad=100; 
clear RGB 
RGB(1:sz,1:sz,1:3)=255;

% I am storing the x co-ordinates in x and y co-ordinates in y. 
[x y]= find(RGB==255); 

%‘xc’ and ‘yc’ contains the midpoint of the circle.
xc=ceil((sz+1)/2); 
yc=ceil((sz+1)/2); 

r=rad.^2; 

 %Here I am finding the points which satisfy the equation. To avoid for loop I am using the ‘find’ function. 
d=find(((x-xc).^2+(y-yc).^2) <= r); 
%The points that are stored in d contains the index value for x and y that satisfies the equation. 

        for i=1:size(d,1)    
         RGB(x(d(i)),y(d(i)),:)=0;   
        end 
        %The rest of the procedure is same. I found the edge and I strengthen the edge by dilating. 
       
        B=rgb2gray(RGB); 
ED=edge(B); 
SE=strel('disk',1); 
cir=~imdilate(ED,SE); 
figure,imshow(cir); 
%Concentric circles: 

%The procedure is same but I use loop to produce ‘n’ no.of circles. 

for i=1:8 
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