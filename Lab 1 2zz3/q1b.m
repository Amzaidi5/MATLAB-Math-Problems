L = 10;
x = linspace(0,L,200);
f = sqrt(1000-x.^3);

plot(x,f,'r','linewidth', 3);
title('Syed Ali Zaidi, 400313696');
x = linspace(-L,0,200);
f2 = sqrt(1000-(-x).^3);

hold on;
plot(x,f2,'b','linewidth',3);
a = zeros(1,7);
x = linspace(-2*L,-L,200);
a0 = (2/L)*trapz(x,f);
fb = zeros(1,200);
for n = 1:7
    y = f.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(-L,0,200);
a0 = (2/L)*trapz(x,f2);
fb = zeros(1,200);
for n = 1:7
    y = f2.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(0,L,200);
a0 = (2/L)*trapz(x,f);
fb = zeros(1,200);
for n = 1:7
    y = f.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(L,2*L,200);
a0 = (2/L)*trapz(x,f2);
fb = zeros(1,200);
for n = 1:7
    y = f2.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end
hold off