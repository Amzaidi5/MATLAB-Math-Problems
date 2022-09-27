x = 0:0.001:1;
y1 = x;
y2 = x.^5; 
N = 1000;
work_A = 0;
work_B = 0;

for i = 1:N+1
    Fx1(i) = (-5*(y1(i)+0.6)^3.6);
    Fy1(i) = -18*x(i)*(y1(i)+0.6)^2.6;
end

for i = 1:N
    dWork_A = (Fy1(i)+Fx1(i))*(y1(i+1)-y1(i));
    work_A = work_A + dWork_A;
end

for i = 1:N+1
    Fx2(i) = (-5*(y2(i)+0.6)^3.6);
    Fy2(i) = -18*x(i)*(y2(i)+0.6)^2.6;
end

for i = 1:N
    dWork_B = (Fy2(i)+Fx2(i))*(y2(i+1)-y2(i));
    work_B = work_B + dWork_B;
end

display(work_A);
display(work_B);

syms x y
phi = -5*x*(y+0.6)^3.6;
x = 0;
y = 0;
phi_initial = -5*x*(y+0.6)^3.6;
x = 1;
y = 1;
phi_final = -5*x*(y+0.6)^3.6;
phi_val = phi_final - phi_initial;
display(phi_val);

