
%Problem #3:
u = linspace(0, 2*pi, 40);
v = linspace(0,2*pi, 40);
[u,v] = meshgrid(u,v);

x = (3 + 8*cos(v))*cos(u);
y = (3 + 8*cos(v))*sin(u);
z = 5*sin(v);

surf(x,y,z);
title('Syed Ali Zaidi, 400313696')


%Problem #4:
syms u v
x = (3 + 8*cos(v))*cos(u);
y = (3 + 8*cos(v))*sin(u);
z = 5*sin(v);

ru = [diff(x,u);diff(y,u);diff(z,u)];
rv = [diff(x,v);diff(y,v);diff(z,v)];

cross_prod = cross(ru,rv);
norm_ruxrv = sqrt(cross_prod(1)^2 + cross_prod(2)^2 + cross_prod(3)^2);

func = matlabFunction(norm_ruxrv);
c = 0;
d = 2*pi;
answer = integral2(func,0,2*pi,c,d);
display(answer);


