syms x y 
Q = x.^2/2; 
P = -y.^2/2;
Qx = diff(Q,x);
Py = diff(P,y); 
integrand = Qx-Py;
func = matlabFunction(integrand);
display(func);
a = 6; 
b = 10; 
c = @(x) 2*abs(x-8)+9;
d = @(x) 13+sqrt((4-(x-8).^2)/2);
integral2(func,a,b,c,d)