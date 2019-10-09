%s = serial('COM9','BaudRate',9600);
%fopen(s);
%fprintf(s,'A');
%fclose(s);
%delete(s)
%clear s
serial = serial('COM11');
fopen(serial);
fprintf(s,'RS232?');