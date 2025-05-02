% Ardy Seto P
% Quadcopter Model

% control input
u1=b*((w1^2)+(w2^2)+(w3^2)+(w4^2));
u2=b*l*((w3^2)-(w1^2));
u3=b*l*((w4^2)-(w2^2));
u4=d*((w2^2)+(w4^2)-(w1^2)-(w3^2));

% quadcopter equation
xdd=(-u1/m)*(sin(phi)*sin(psi)+cos(phi)*cos(psi)*sin(theta));
ydd=(-u1/m)*(cos(phi)*sin(psi)*sin(theta)-cos(psi)*sin(phi));
zdd=g-((u1/m)*(cos(phi)*cos(theta)));

phidd  =(((iy-iz)/ix)*thetad*psid)+(u2/ix);
thetadd=(((iz-ix)/iy)*phid*psid)+(u3/iy);
psidd  =(((ix-iy)/iz)*phid*thetad)+(u4/iz);

% update XYZ velocity & position
xd=(xdd*ts)+xd;
yd=(ydd*ts)+yd;
zd=(zdd*ts)+zd;

x =(xd*ts)+x;
y =(yd*ts)+y;
z =(zd*ts)+z;

% update phi theta psi angular velocity & position
phid=(phidd*ts)+phid;
thetad=(thetadd*ts)+thetad;
psid=(psidd*ts)+psid;

phi =(phid*ts)+phi;
theta =(thetad*ts)+theta;
psi =(psid*ts)+psi;

% save data to vector for plotting
x_plot(counter)=x;
y_plot(counter)=y;
z_plot(counter)=z;

phi_plot(counter)=phi;
theta_plot(counter)=theta;
psi_plot(counter)=psi;

% update counter
counter=counter+1;