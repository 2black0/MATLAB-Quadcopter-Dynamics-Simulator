% Ardy Seto P
% Quadcopter Model

% for simulation
sim_time=30;
ts=.01;
t_plot=[0:ts:sim_time-ts];
counter=1;

% global constants for quadrotor
g=9.81;
b=3.25e-5;
d=7.5e-7;
l=0.25;
m=0.65;
ix=7.5e-3;
iy=7.5e-3;
iz=1.3e-2;

% angular speed of-i motor
w1=sqrt(m*g/(4*b)); %sqrt(m*g/(4*b))
w2=sqrt(m*g/(4*b));
w3=sqrt(m*g/(4*b));
w4=sqrt(m*g/(4*b));
wmax=1000;

% initial condition
x=0;
y=0;
z=0;
xd=0;
yd=0;
zd=0;
phi=0;
theta=0;
psi=0;
phid=0;
thetad=0;
psid=0;

% control input
u1=0;
u2=0;
u3=0;
u4=0;