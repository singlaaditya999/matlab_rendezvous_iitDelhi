function Popup_menu 
global filename Img  I T; 
scz=get(0,'ScreenSize'); 
figure('Position',[round(scz(1,3)/4) round(scz(1,4)/8) 800 500],'MenuBar','None','NumberTitle','off','Name','PopUpMenu Example','Resize','off'); 
axes('Position',[0 0 .7 1],'xtick',[],'ytick',[]); 
directory=dir('*.jpg');
files={directory.name}'; 

%Get the File Name 
%Position =[X Y length width] 

uicontrol('style','text','Position',[565,453 60 20]','String','Filename:');
%The file names are the options here.

uicontrol('Style','popupmenu','position',[628 445 170 30],'Value',1,'String',files,'Callback',@displayfile); 
%Select the Conversion type 

uicontrol('style','text','Position',[565,415 90 20]','String','Image Conversion:');

%The options for image conversion are : Original Image, Convert to grayscale,Convert to binary, Edge detected Image.

uicontrol('Style','popupmenu','position',[565 375 200 30],'Value',1,'String',{'Convert to GrayScale','Convert to Binary','Original Image','Edge detected Image'},'Callback',@convert); 

%Select the edge type 

T=uicontrol('Style','popupmenu','position',[565 305 200 30],'Value',1,'String',{'Canny','Sobel','Prewitt','log'},'callback',@findedge); 

F=uicontrol('style','text','Position',[565,345 90 20]','String','Edge Type:'); 

%These components can be made visible or invisible 

set(T,'Visible','off');

function displayfile(obj,eve) 
 ptr=get(obj,'value'); 
 filename=char(files(ptr));
  Img=imread(filename); 
  imshow(Img); 
end 


%Switch case 
%Value 1 performs the conversion of the orginal image to grayscale image
%Value 2 performs the conversion of the orginal image to binary image 
%Value 3 shows the orginal image 
%Value 4 performs the edge detection of the image based on the type. 

function convert(obj,eve) 
     ptr=get(obj,'value');
     switch ptr 
          case {1} 
              set(T,'Visible','off'); 
              set(F,'Visible','off'); 
               I=rgb2gray(Img); 
                imshow(I); 
                case {2} 
                    set(T,'Visible','off'); 
                     set(F,'Visible','off');
                     I=im2bw(Img); 
                     imshow(I); 
                     case {3} 
                          set(T,'Visible','off'); 
                          set(F,'Visible','off'); 
                          imshow(Img); 
                          case {4} 
                              set(T,'Visible','on'); 
                              set(F,'Visible','on'); 
     end 
end 
                             
 %To perform edge detection based on the type 
 function findedge(obj,event) 
      ptr=get(obj,'value'); 
       B=rgb2gray(Img); 
       switch ptr 
           case {1} 
               imshow(~edge(B,'canny')); 
               case {2} 
                    imshow(~edge(B,'sobel')); 
                     case {3} 
                           imshow(~edge(B,'Prewitt')); 
                              case {4} 
                                   imshow(~edge(B,'log')); 
       end 
 end 
end 
                               








