clear all
 a=imread('cute01.tif');
 imshow(a);
 Fil=fspecial('average');% function fspecial is one(3,3)/9
 aFilter=filter2(Fil,a);
 imshow(aFilter/255);

