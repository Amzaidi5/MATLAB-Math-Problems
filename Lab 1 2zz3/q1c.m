L = 10;
x = linspace(0,L,200);
f = sqrt(1000-x.^3);
plot(x,f,'r','linewidth', 3);
title('Syed Ali Zaidi, 400313696');
x = linspace(-L,0,200);

hold on;
plot(x,f,'b','linewidth',3);
ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(-2*L,-L,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end

ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(-L,0,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end

ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(0,L,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end

ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(L,2*L,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end
hold off;