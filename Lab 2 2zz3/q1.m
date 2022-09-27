fileID = fopen('math2zz3_hw1_data_file.txt');
data = fscanf(fileID,'%u%g%g%g',[4 2000]);
fclose(fileID);

t = 1:1:2000;
rx = 2*data(2,:);
ry = 6*data(3,:);
rz = 8*data(4,:);

plot3(rx,ry,rz,'Linewidth',2)
xlabel('x'), ylabel('y'), zlabel('z');  
title('Syed Ali Zaidi, 400313696');

