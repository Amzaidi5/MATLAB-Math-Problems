x=linspace(0,5,20);
y=linspace(-3,3,20);
[x,y] = meshgrid(x,y);

z1 = sqrt(9-y.^2);
z2 = -sqrt(9-y.^2);

fx1 = (x + y.*z1);
fx2 = (x + y.*z2);
fy = (-3.*x.*y.^2);
fz1 = (x.^2.*z1.^2);
fz2 = (x.^2.*z2.^2);

hold on;
surf(x,y,z1,x);
surf(x,y,z2,x);
quiver3(x,y,z1,fx1,fy,fz1,6,'color','r');
quiver3(x,y,z2,fx2,fy,fz2,6,'color','r');

xN = linspace(0,5,20);
yN = linspace(-3,3,20);

[xN, yN] = meshgrid(xN, yN);
zN1 = sqrt(9-y.^2);
zN2 = -sqrt(9-y.^2);

surf(xN,yN,zN1);
surf(xN,yN,zN2);

rho=linspace(0,3,20);
theta=linspace(0,2*pi,20);
[rho, theta] = meshgrid(rho, theta);
surf((rho.*0),(rho.*cos(theta)),(rho.*sin(theta)),rho.*0);

xlim([-0.5,5]);
ylim([-4,4]);
zlim([-3,3.5]);
grid on;
view(3);
title('Saon Pal, 400131159');
xlabel('x'); ylabel('y'); zlabel('z');