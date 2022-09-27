x = 0:0.01:1;
y1 = x;
y2 = x.^5; 
N = 100;
dx = 0.01;
work_A = 0;
work_B = 0;
Fx1 = zeros(N,1);
Fx2 = zeros(N,1);

for i = 1:N+1
    Fx1(i) = (-5*(y1(i)+0.6)^3.6);
end

for i = 1:N
    dWork_A = Fx1(i)*dx;
    work_A = work_A + dWork_A;
end

for i = 1:N+1
    Fx2(i) = (-5*(y2(i)+0.6)^3.6);
end

for i = 1:N
    dWork_B = Fx2(i)*dx;
    work_B = work_B + dWork_B;
end

display(work_A);
display(work_B);
