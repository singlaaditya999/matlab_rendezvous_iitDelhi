file_name = 'cameraman.tif';
I = imread(file_name);
normal_edges = edge(I,'canny');
imshow(I);
title('Original Image');
figure
imshow(normal_edges);
title('Conventional Edge Detection');

% You can use an anonymous function to define the function handle. The
% function is passed a structure as input, a "block struct", with several
% fields containing the block data as well as other relevant information.
% The function should return the processed block data.
edgeFun = @(block_struct) edge(block_struct.data,'canny');

block_size = [50 50];
block_edges = blockproc(file_name,block_size,edgeFun);
figure
imshow(block_edges);
title('Block Processing - Simplest Syntax');

border_size = [10 10];
block_edges = blockproc(file_name,block_size,edgeFun,'BorderSize',border_size);
figure
imshow(block_edges);
title('Block Processing - Block Borders');

thresh = 0.09;
edgeFun = @(block_struct) edge(block_struct.data,'canny',thresh);
block_edges = blockproc(file_name,block_size,edgeFun,'BorderSize',border_size);
figure
imshow(block_edges);
title('Block Processing - Borders & Fixed Threshold');