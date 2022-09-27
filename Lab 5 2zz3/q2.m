syms x y t

P =@(x, y) -y^2/2;
Q =@(x, y) x^2/2;

y1 =@(x) 25 - 2*x;
dy1dx = diff(y1, x);
integrand_1 =@(x) (-y1(x)^2/2) + (x^2/2)*dy1dx;
fun1 = matlabFunction(integrand_1(x));
integral_1 = integral(fun1, 6, 8);

y2 =@(x) 2*x - 7;
dy2dx = diff(y2, x);
integrand_2 =@(x) (-y2(x)^2/2) + (x^2/2)*dy2dx;
fun2 = matlabFunction(integrand_2(x));
integral_2 = integral(fun2, 8, 10);

x3 =@(t) 2*cos(t) + 8;
dx3dt = diff(x3, t);
y3 =@(t) sqrt(2)*sin(t) + 13;
dy3dt = diff(y3, t);
integrand_3 =@(t) P(x3(t), y3(t))*dx3dt + Q(x3(t), y3(t))*dy3dt;
fun3 = matlabFunction(integrand_3(t));
integral_3 = integral(fun3, 0, pi);
output = [integral_1, integral_2, integral_3]