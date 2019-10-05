plot([-10 -3 10 0 0 0 0 0 2 ] ,[0 0  0 0 6 10 -10 0 3],'--rs','LineWidth',2,'MarkerFaceColor','k'); 

%180 degrees 

[theta,radius]=cart2pol(-2,0); 

deg=rad2deg(theta); 

%display the radius , angle and the co-ordinates in the axes. 

degree=strcat('deg:',num2str(deg)); 
rad=strcat('radius:',num2str(radius)); 
text(-3,-2,degree); 
text(-3,-3,rad);      

%90 degrees 

[theta,radius]=cart2pol(0,6); 
deg=rad2deg(theta); 
degree=strcat('deg:',num2str(deg)); 
rad=strcat('radius:',num2str(radius)); 
text(-3,6,degree); 
text(-3,5,rad);

%45 degrees 
[theta,radius]=cart2pol(2,2); 
deg=rad2deg(theta); 
degree=strcat('deg:',num2str(deg)); 
rad=strcat('radius:',num2str(radius)); 
text(4,3,degree); 
text(4,2,rad); 
