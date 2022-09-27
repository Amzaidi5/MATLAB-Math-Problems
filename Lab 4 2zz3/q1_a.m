syms x y

P = -5*(y+0.6)^3.6;
integrand = 0 - diff(P,y);
func = matlabFunction(integrand);
Path_A = integral(func,0,1);
display(Path_A);

