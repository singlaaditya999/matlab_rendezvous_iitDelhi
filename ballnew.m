clear;
clc
vid=videoinput('winvideo',1,'YUY2_640X480');%PLEASE CHECK THE RESOLUTION BEFORE TESTING
set(vid,'FramesPerTrigger',1);
preview(vid);
pause(10);
rgb_image = getsnapshot(vid);
[a b c]= size(rgb_image);
y=a;
x=b;
x1=x/2-120;
x2=x/2+120;
y1=y/2-30;
y2=y/2+30;
%ser=serial('COM1');
%fopen(ser);
while(1)
    rgb_image = getsnapshot(vid);
    flushdata(vid);
    rbar=0;
    cbar=0;
    e=0;
    fR=rgb_image(:,:,1);fG=rgb_image(:,:,2);fB=rgb_image(:,:,3);
    I=((fR>=80) & (fG<=70) & (fB<=70));%PLEASE SET THE THRESHOLD VALUES BEFORE TESTING
    se=strel('disk',20);
    B=imopen(I,se);
    final=imclose(B,se);
    [L,n]=bwlabel(final);
    imshow(rgb_image);% THIS LINE IS NEEDED ONLY FOR TESTING SIMULATION
    hold on % THIS LINE IS NEEDED ONLY FOR TESTING SIMULATION
    for k=1:n
        [r,c]=find(L==k);
        rbar=mean(r);
        cbar=mean(c);
        plot(cbar,rbar,'Marker','*','MarkerEdgeColor','B','MarkerSize',20)% THIS LINE IS NEEDED ONLY FOR TESTING SIMULATION
        e=(((cbar>=x1)*2*2*2) + ((cbar<=x2)*2*2) + ((rbar>=y1)*2) + (rbar<=y2))
     end
     switch (e)
        case 5
            disp('left'),fprintf(ser,'L');
        case 6
            disp('left'),fprintf(ser,'L');
        case 7
            disp('left'),fprintf(ser,'L');
        case 9
            disp('right'),fprintf(ser,'R');
        case 10
            disp('right'),fprintf(ser,'R');
        case 11
            disp('right'),fprintf(ser,'R');
        case 13
            disp('forward'),fprintf(ser,'F');
        case 14
            disp('back'),fprintf(ser,'B');
         otherwise
            disp('stop'),fprintf(ser,'S');
     end
end
fclose(ser);