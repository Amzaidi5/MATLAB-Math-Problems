L = 10;
x = linspace(0,L,200);
f = sqrt(1000-x.^3);

plot(x,f,'r','linewidth', 3);
title('Syed Ali Zaidi, 400313696');
x = linspace(-L,0,200);
f2 = -sqrt(1000-x.^3);

hold on
plot(x,f2,'b','linewidth',3);
a = zeros(1,7);
x = linspace(-2*L,-L,200);
fa = zeros(1,200);
for n = 1:7
    y = f.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(-L,0,200);
fa = zeros(1,200);
for n = 1:7
    y = f2.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(0,L,200);
fa = zeros(1,200);

for n = 1:7
    y = f.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end
a = zeros(1,7);
x = linspace(L,2*L,200);
fa = zeros(1,200);
for n = 1:7
    y = f2.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end
hold off;