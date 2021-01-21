clear all
clc
v0=100;
a=pi/4;
g=9.8;
t=0:0.01:20;
H = t*v0*cos(a);
V1= t*v0*sin(a)-g*t.^2/2;
plot(t,H);
xlabel('time');
ylabel('distance');
title('graph horizontal distance versus time');

v0=100;
a=pi/4;
g=9.8;
t=0:0.01:20;
V1= t*v0*sin(a)-g*t.^2/2;
plot(t,V1);
xlabel('time');
ylabel('distance');
title('graph of vertical distance vs time');

v0=100;
a=pi/4;
g=9.8;
t=0:0.01:20;
V1=t*v0*sin(a)-g*t.^2/2;
H = t*v0*cos(a);
plot(H,V1);
grid on;
xlabel('horizontal distance');
ylabel('vertical distance');
title('Graph of horizontal/ vertical distance');



V1 = t*v0*sin(pi/2)- g*t.^2/2;
V2 = t*v0*sin(pi/4)- g*t.^2/2;
V3 = t*v0*sin(pi/6)- g*t.^2/2;
H1 = t*v0*cos(pi/2);
H2 = t*v0*cos(pi/4);
H3 = t*v0*cos(pi/6);
subplot(2,2, 1); 
plot(t,H)
title('Graph of Horizontal Distance Versus Time');
xlabel('Time');
ylabel('Horizontal Distance');
subplot(2,2, 2); 
plot(t,V1)
title('Graph of Vertical Distance Versus Time');
xlabel('Time');
ylabel('Vertical Distance');
subplot(2,2, 3); 
plot(H,V1)
title('Graph of Vertical Distance Versus Horizontal Distance');
xlabel('Horizontal Distance');
ylabel('Vertical Distance');
subplot(2,2, 4); 
plot(H1,V1,H2,V2,'--',H3,V3,':');
legend('for pi/2', 'for pi/4', 'for pi/6');
xlabel('Horizontal Distance');
ylabel('Vertical Distance');
