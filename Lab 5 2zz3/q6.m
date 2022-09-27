f =@(x, y, z)  (x.^2 + z.^2) * 1;
x1 = 3 - sqrt(2);
x2 = 3 + sqrt(2);
y1 =@(x) 7 - sqrt(2 - (x-3).^2);
y2 =@(x) 7 + sqrt(2 - (x-3).^2);
z1 =@(x, y) 6 + sqrt((x-3).^2 + (y-7).^2);
z2 =@(x, y) 6 + sqrt(4 - (x-3).^2 - (y-7).^2);
integral3(f, x1, x2, y1, y2, z1, z2)