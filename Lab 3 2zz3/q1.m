%QUESTION 1

[x,y] = meshgrid(-1:0.02:1,-1:0.02:1);

f = @(x,y)3*(1-3*x).^2.*exp(-x.^2 - (3*y+1).^2) ...
- 10*(3*x/5 - 27*x.^3 - 243*y.^5).*exp(-5*x.^2-5*y.^2) ...
- 1/3*exp(-(3*x+1).^2 - 9*y.^2) + (x.^2+y.^2) - 1;

contourf(x,y,f(x,y),20);
colorbar;
title('Syed Ali Zaidi, 400313696');
xlabel('x');
ylabel('y');

[x,y] = meshgrid(-1:0.1:1,-1:0.1:1);

fx = @(x,y)-(18*(1-3*x)).*exp(-x.^2-(3*y+1).^2) ...
- 6*(1-3*x).^2.*x.*exp(-x.^2-(3*y+1).^2) ...
- (10*(3/5-81*x.^2)).*exp(-5*x.^2-5*y.^2) ...
+ (20*((3/5)*x-27*x.^3-243*y.^5)).*5.*x.*exp(-5*x.^2-5*y.^2) ...
- (1/3*(-18*x-6)).*exp(-(3*x+1).^2-9*y.^2)+2*x;

fy = @(x,y)3*(1-3*x).^2.*(-18*y-6).*exp(-x.^2-(3*y+1).^2) ...
+ 12150*y.^4.*exp(-5*x.^2-5*y.^2) ...
+ (20*((3/5)*x-27*x.^3-243*y.^5)).*5.*y.*exp(-5*x.^2-5*y.^2) ...
+ 6*y.*exp(-(3*x+1).^2-9*y.^2)+2*y;

hold on;
quiver(x,y,fx(x,y),fy(x,y),'k')
hold off;

% QUESTION 2

x_0 = [-0.16, 0.66];

rprime = @(t,x)[-fx(x(1),x(2));-fy(x(1),x(2))];
tDomain = (0:0.001:5.0);
[t,r] = ode45(rprime,tDomain,x_0);

x_val = r(end,1);
y_val = r(end,2);
height = f(x_val,y_val);

% QUESTION 3

r_x = r(:,1);
r_y = r(:,2);

r_positive = [];
r_negative = [];
for i = 1:length(r_x)
    if f(r_x(i),r_y(i))>=0
        r_positive = [r_positive;r_x(i),r_y(i)];
    else
        r_negative = [r_negative;r_x(i),r_y(i)];    
    end
end  

hold on;
plot(r_positive(:,1),r_positive(:,2),'w','LineWidth',2);
plot(r_negative(:,1),r_negative(:,2),'k','LineWidth',2);
hold off;

% QUESTION 4

dx = 0;
dy = 0;
dz = 0;
length_stream = 0;
for i=1:(length(r_x)-1)
    dx = r_x(i+1) - r_x(i);
    dy = r_y(i+1) - r_y(i);
    dz = f(r_x(i+1),r_y(i+1)) - f(r_x(i),r_y(i));
    length_stream = length_stream + norm([dx;dy;dz]);
end
display(length_stream);

% QUESTION 5

length_pipe = [x_val,y_val,height] - [x_0,f(x_0(1),x_0(2))];
length_pipe = norm(length_pipe);
display(length_pipe);

% QUESTION 6

pipe_height = f(x_0(1), x_0(2)) - height;
display(pipe_height);