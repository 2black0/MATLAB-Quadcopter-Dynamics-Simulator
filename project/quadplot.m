% Ardy Seto P
% Quadcopter Model

% plot XYZ Positon
fig1=figure;
hold on;
grid on;
subplot(1,3,1);
plot(t_plot,x_plot);
title('X Position');
xlabel('Time (s)');
ylabel('Distance (m)');

subplot(1,3,2);
plot(t_plot,y_plot);
title('Y Position');
xlabel('Time (s)');
ylabel('Distance (m)');

subplot(1,3,3);
plot(t_plot,z_plot);
title('Z Position');
xlabel('Time (s)');
ylabel('Distance (m)');

% plot Phi Theta Psi Angular Positon
fig2=figure;
hold on;
grid on;
subplot(1,3,1);
plot(t_plot,phi_plot);
title('Roll Angle');
xlabel('Time (s)');
ylabel('Angle (rad)');

subplot(1,3,2);
plot(t_plot,theta_plot);
title('Pitch Angle');
xlabel('Time (s)');
ylabel('Angle (rad)');

subplot(1,3,3);
plot(t_plot,psi_plot);
title('Yaw Angle');
xlabel('Time (s)');
ylabel('Angle (rad)');

% saving figure to JPG
%print -djpg figure1 %for octave
%print -djpg figure2 %for octave
saveas(fig1,'figure1.jpg'); %for matlab
saveas(fig2,'figure2.jpg'); %for matlab
