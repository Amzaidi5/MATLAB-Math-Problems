a = zeros(1,20);
b = zeros(1,20);
x = linspace(-pi,pi,200);
f = exp(-x);

a0 = 1/pi*trapz(x,f);

for n = 1:20
    y = f.*cos(n*x);
    a(n) = 1/pi*trapz(x,y);

    y = f.*sin(n*x);
    b(n) = 1/pi*trapz(x,y);
end
fs = zeros(1,200);

for n = 1:20
    fs = fs + a(n)*cos(n*x) + b(n)*sin(n*x);
end

fs = a0/2 + fs;
plot(x,f,'r',x,fs,'b')
legend('f','fs')
title('y=exp(-x)')
