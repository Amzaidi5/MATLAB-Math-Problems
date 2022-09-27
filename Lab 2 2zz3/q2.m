fileID = fopen('math2zz3_hw1_data_file.txt');
data = fscanf(fileID,'%u%g%g%g', [4 2000]);
fclose(fileID);

t = data(1,:);
ft = 1*data(2,:);
gt = 2*data(3,:);
ht = 9*data(4,:);
N = 2000;

df = zeros(1, N-1);
dg = zeros(1, N-1);
dh = zeros(1, N-1);
tanx = zeros(1, N-1);
tany = zeros(1, N-1);
tanz = zeros(1, N-1);
rSpeed = zeros(1, N-1);
dtanx = zeros(1, N-1);
dtany = zeros(1, N-1);
dtanz = zeros(1, N-1);
tanSpeed = zeros(1, N-1);
normx = zeros(1, N-1);
normy = zeros(1, N-1);
normz = zeros(1, N-1);

for i=1:N-1
  df(i) = (ft(i+1) - ft(i))/(t(i+1)-t(i));
  dg(i) = (gt(i+1) - gt(i))/(t(i+1)-t(i));
  dh(i) = (ht(i+1) - ht(i))/(t(i+1)-t(i));
  rSpeed(i) = sqrt((df(i))^2+(dg(i))^2+(dh(i))^2);
  tanx(i) = df(i)/rSpeed(i);
  tany(i) = dg(i)/rSpeed(i);
  tanz(i) = dh(i)/rSpeed(i);
 
end

for i=1:N-2
  dtanx(i) = (tanx(i+1) - tanx(i))/(t(i+1)-t(i));
  dtany(i) = (tany(i+1) - tany(i))/(t(i+1)-t(i));
  dtanz(i) = (tanz(i+1) - tanz(i))/(t(i+1)-t(i));
end 

for i=1:N-1
  tanSpeed(i) = sqrt((dtanx(i))^2+(dtany(i))^2+(dtanz(i))^2);
  normx(i) = dtanx(i)/tanSpeed(i);
  normy(i) = dtany(i)/tanSpeed(i);
  normz(i) = dtanz(i)/tanSpeed(i);
end

Bx = zeros(1,N-2);
By = zeros(1,N-2);
Bz = zeros(1,N-2);

% calc the binormal vector
for i=1:N-1
    Bx(i) = tany(i)*normz(i) - normy(i)*tanz(i);
    By(i) = tanz(i)*normx(i) - normz(i)*tanx(i);
    Bz(i) = tanx(i)*normy(i) - normx(i)*tany(i);
end

disp(Bx(1,321));
disp(By(1,321));
disp(Bz(1,321));


hold on;
quiver3(ft(1:N-1),gt(1:N-1),ht(1:N-1),tanx(1:N-1),tany(1:N-1),tanz(1:N-1),0.5);
quiver3(ft(1:N-2),gt(1:N-2),ht(1:N-2),normx(1:N-2),normy(1:N-2),normz(1:N-2),0.5);
quiver3(ft(1:N-2),gt(1:N-2),ht(1:N-2),Bx(1:N-2),By(1:N-2),Bz(1:N-2),0.5);
hold off;
