%Code for Controlling robot using Matlab interface with parallel port by either wireless or wired communication 
 ;-------------------------------------------------------------
 parlport = digitalio('parallel', 'LPT1');
 line = addline(parlport, 0:3, 'out');

 disp('MATLAB CONTROLLED ROBOTIC ARM');
 disp('press 1 to move robot forward')
 disp('press 2 to move robot backward')
 disp('press 3 to move robot left')
 disp('press 4 to move robot right')
 disp('press 0 to stop robot')
 disp('press 5 for moving up')
 disp('press 6 for moving down')
 disp('press 7 for moving left')
 disp('press 8 for moving right')
 while 1
 N = input('enter the command ')
 switch N
 case (1)
 putvalue (parlport, [ 0 1 0 1 0 0 0 0]);
 case (2)
 putvalue (parlport,[ 1 0 1 0 0 0 0 0]);
 case (3)
 putvalue (parlport,[ 0 1 1 0 0 0 0 0]);
 case (4)
 putvalue (parlport,[ 1 0 0 1 0 0 0 0]);
 case (0)
 putvalue (parlport,[ 1 1 1 1 0 0 0 0]);
 case (5)
 putvalue (parlport,[ 0 0 0 0 0 1 0 1]);
 case (6)
 putvalue (parlport,[ 0 0 0 0 1 0 1 0]);
 case (7)
 putvalue (parlport,[ 0 0 0 0 0 1 1 0]);
 case (8)
 putvalue (parlport,[ 0 0 0 0 1 0 0 1]);
 end
 end
 ;-----------------------------------------------------
