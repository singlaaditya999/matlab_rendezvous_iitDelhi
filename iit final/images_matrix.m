colormap(gray);
X = spiral(8);
image(X);
m=gray;
size(m);
ColorMapIndex = X(4,2); %u can change value
m(ColorMapIndex,:)
