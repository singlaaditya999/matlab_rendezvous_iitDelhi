

%A 'hot' colormap, softened by 'gray', can be brightened by raising the
%elements of the color map to a power less than 1.

X = spiral(8);
image(X);
gamma = .5; %value can change 
S = (hot + gray)/2;
S = S.^gamma;
colormap(S)
rgbplot(S)

%spy((X==2) | (X==3))