A=[100 230 11; 22 10 15; 2 3 90;]
%To add a row at the beginning:
A=[[10 20 30]; A] 
%To add a row at the end:
A=[A; [10 20 30];]
%To add a column at the beginning:
%A=[[10; 20 ;30] A]
%To add a column at the end:
%A=[A [10; 20 ;30]] 
%To add a row in the middle:
A=[10 12 14 16; 3 6 9 12; 4 8 12 16; 5 10 15 20;]
%A=[A(1:2,:); [8 16 24 32]; A(3:4,:);]
%To add a column in the middle:
A=[A(:,1:2) [100; 200; 300; 400;] A(:,3:4)]
