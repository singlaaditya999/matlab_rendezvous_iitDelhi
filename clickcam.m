clear all;
imaqreset;
recorder = audiorecorder(44100,8,1);
vid = videoinput('winvideo',1);
%triggerconfig(vid,'manual')
flag=1;
while(flag==1)
    record(recorder,5);
    %start(vid);
    preview(vid);
    pause(recorder);
    play(recorder);
    click=getaudiodata(recorder);
    if(max(click)>0.8)
        pic = getsnapshot(vid);
        closepreview;
        flag=0;
    end   
end
imagesc(ycbcr2rgb(pic));
snap = ycbcr2rgb(pic);
imwrite(snap,'check','png');
    