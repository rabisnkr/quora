#!/usr/bin/octave -q

R = 5; # radius of circle
step = 0.01;
X = -10:step:10;
#abs(p,q) > R
p = 3; q = 4;
# Circle
X1= -R:step:R;
Y1 = sqrt(R*R - X1.^2);
Y2 = -Y1;

D = R*sqrt(p*p+q*q-R*R);
m1 = (-p*q + D)/(R*R-p*p);
m2 = (-p*q - D)/(R*R-p*p);
y1 = m1.*(X - p) + q;
y2 = m2.*(X - p) + q;
scatter(p,q,[],[0.23,0.23,0.23]);
hold on; grid on; axis ([-10, 10, -10, 10], "square");

plot(X,y1,'-r','linewidth',1);
plot(X,y2,'-r','linewidth',1);
plot(X1,Y1,'-k','linewidth',1);
plot(X1,Y2,'-k','linewidth',1);

print('tangent1.png');
hold off; clf;
exit;
