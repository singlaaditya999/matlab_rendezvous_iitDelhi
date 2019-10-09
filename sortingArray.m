A = [5 8 9 10 100 7 50 8 88 6;];
[sorted_array,pos]= sort(A)
[max_value,max_pos]=max(A)
[min_value,min_pos]=min(A) 

B=[17 5 8 9; 45 23 50 6; 7 49 21 11]
[sorted_array, pos]=sort(B(:))
[sorted_array, pos]=max(B(:))
[sorted_array, pos]=min(B(:))
%To retrieve the minimum value: 
B(4)
