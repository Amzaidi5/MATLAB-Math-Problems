syms x y
P = sin(x.^2+y.^2); 
Q = log(5+x.*y); 
Qx = diff(Q,x); 
Py = diff(P,y); 

integrand = Qx-Py; 

func = matlabFunction(integrand); 
a = 0; 
b = 3; 
c = 0; 
d = @(x) 3.*x; 
integral = integral2(func,a,b,c,d);
display(integral);