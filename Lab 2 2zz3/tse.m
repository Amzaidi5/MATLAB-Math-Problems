fileID = fopen('math2zz3_hw1_data_file.txt');
data = fscanf(fileID,'%u%g%g%g',[4 2000]);
fclose(fileID);

t = 1:1:2000;
rx = 1*data(2,:);
ry = 2*data(3,:);
rz = 9*data(4,:);

N = data(1,end);
drx = zeros(1,N-1);
dry = zeros(1,N-1);
drz = zeros(1,N-1);

for i=1:N-1
  drx(i) = (rx(i+1) - rx(i))/(t(i+1)-t(i));
  dry(i) = (ry(i+1) - ry(i))/(t(i+1)-t(i));
  drz(i) = (rz(i+1) - rz(i))/(t(i+1)-t(i));
end

norm_dr = sqrt(drx.^2+dry.^2+drz.^2);
Tx = drx./norm_dr;
Ty = dry./norm_dr;
Tz = drz./norm_dr;

dTx = zeros(1,N-1);
dTy = zeros(1,N-1);
dTz = zeros(1,N-1);

for i=1:N-2
  dTx(i) = (Tx(i+1) - Tx(i))/(t(i+1)-t(i));
  dTy(i) = (Ty(i+1) - Ty(i))/(t(i+1)-t(i));
  dTz(i) = (Tz(i+1) - Tz(i))/(t(i+1)-t(i));
end

norm_dT = sqrt(dTx.^2+dTy.^2+dTz.^2);
Nx = dTx./norm_dT;
Ny = dTy./norm_dT;
Nz = dTz./norm_dT;


t = 20:300:2000;
T = [Tx;Ty;Tz];
N = [Nx;Ny;Nz]; 
B = cross(T,N);

disp('B at i=321 is:');
disp(B(:,321));

plot3(rx,ry,rz,'Linewidth',2);
hold on;
quiver3(rx(t),ry(t),rz(t),Tx(t),Ty(t),Tz(t),0.2);
quiver3(rx(t),ry(t),rz(t),Nx(t),Ny(t),Nz(t),0.2);
quiver3(rx(t),ry(t),rz(t),B(1,t),B(2,t),B(3,t),0.2);
hold off;
title('Syed Ali Zaidi, 400313696');
xlabel('x')
ylabel('y')
zlabel('z')

k = norm_dT./norm_dr;

max_value = 0;
for i=1:1997
    if k(i) == max(k)
        disp(['Problem #4:', num2str(k(i))])
        max_value = k(i);
    end
end

min_value = k(1);
for i=1:1997
    if k(i) < min_value
        min_value = k(i);
    end
end

diff = max_value - min_value;

disp(diff);