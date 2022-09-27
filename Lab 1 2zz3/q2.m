a = zeros(1,7);
x = linspace(0,L,201);
f = sqrt(1000-x.^3);
fa = zeros(1,201);
for n = 1:7
    y = f.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
end
err_1 = abs(fa(101) - sqrt(1000-125));

a = zeros(1,7);
x = linspace(0,L,201);
a0 = (2/L)*trapz(x,f);
fb = zeros(1,201);
for n = 1:7
    y = f.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
end
err_2 = abs(final(101) - sqrt(1000-125));

ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(0,L,201);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,201);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fd = fc + a0/2;
end
err_3 = abs(fd(101) - sqrt(1000-125));
disp(num2str(err_1));
disp(num2str(err_2));
disp(num2str(err_3));