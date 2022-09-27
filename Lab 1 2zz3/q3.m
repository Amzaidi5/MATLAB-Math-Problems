L = 2*pi;
N = 200;
x = L*(0:N-1)/N;
g = 7*sin(16*pi*x) + 4*cos(7*pi*x);
F = fft(g);
abs_F = abs(fftshift(F));
alpha = (0:N-1)-N/2;
semilogy(alpha,abs_F);
title('Syed Ali Zaidi, 400313696');
