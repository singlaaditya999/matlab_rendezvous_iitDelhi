clc
close all
clear all
for x=-10:0.5:10
if (x>0&&x<=2)
    y=-x+1;
else if (x>=-2&&x<0)
    y=x+1;
else 
    y=0;
end
end
hold on;
grid on;
plot(x,y);
end