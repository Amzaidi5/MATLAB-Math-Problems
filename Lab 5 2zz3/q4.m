th = linspace(0, 2*pi);
phi = linspace(pi/2, pi/4);
[th, phi] = meshgrid(th, phi);
radius = 2;
[x, y, z] = sph2cart(th, phi, radius);
surf(x+3, y+7, z+6)

phi_2 = pi/4;
rho_2 = linspace(0, 2);
[th, rho_2] = meshgrid(th, rho_2);

x_2 = rho_2.*cos(th).*cos(phi_2);
y_2 = rho_2.*sin(th).*cos(phi_2);
z_2 = rho_2.*cos(phi_2);
hold on
title('Syed Ali Zaidi, 400313696');
surf(x_2+3, y_2+7, z_2+6)
view(3);

diff_x1 = -rho_2.*sin(th).*cos(phi);
diff_x2 = -rho_2.*cos(th).*sin(phi);
diff_y1 = rho_2.*cos(th).*cos(phi);
diff_y2 = -rho_2.*sin(th).*sin(phi);
diff_z = -rho_2.*sin(phi);
quiver3(x,y,z,diff_x1,diff_y1,diff_z,6,'color','r');
quiver3(x,y,z,diff_x2,diff_y2,diff_z,6,'color','r');



% x=linspace(0,4,20);
% y=linspace(6,8,20);
% [x,y] = meshgrid(x,y);
% 
% z1 = 6+sqrt((x-3).^2+(y-7).^2);
% z2 = 6+sqrt(4-(x-3).^2-(y-7).^2);
% 
% surf(x,y,z1,x);
% hold on;
% surf(x,y,z2,x);
% view(3);


%quiver3(x,y,z1,fx1,fy,fz1,6,'color','r');
%quiver3(x,y,z2,fx2,fy,fz2,6,'color','r');
%{
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

%}