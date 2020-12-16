% MATLAB controller for Webots
% File:          dog_lie.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
%desktop;
%keyboard;
NUMBER_OF_LEDS = 8;
NUMBER_OF_JOINTS =12;
NUMBER_OF_CAMERAS =5;
TIME_STEP = 64;


motors=[];  
motors(1) = wb_robot_get_device('front left shoulder abduction motor');
motors(2) = wb_robot_get_device('front left shoulder rotation motor');
motors(3) = wb_robot_get_device('front left elbow motor');

motors(4) = wb_robot_get_device('front right shoulder abduction motor');
motors(5) = wb_robot_get_device('front right shoulder rotation motor');
motors(6) = wb_robot_get_device('front right elbow motor');

motors(7) = wb_robot_get_device('rear left shoulder abduction motor');
motors(8) = wb_robot_get_device('rear left shoulder rotation motor');
motors(9) = wb_robot_get_device('rear left elbow motor');

motors(10) = wb_robot_get_device('rear right shoulder abduction motor');
motors(11) = wb_robot_get_device('rear right shoulder rotation motor');
motors(12) = wb_robot_get_device('rear right elbow motor');


motors_target_pos = [ 0, 0 , 0, ... %Front left leg
                     0,   0, 0, ...  %Front right leg
                     0 , 0 , 0, ... %Rear left leg
                     0,   0, 0];     %Rear right leg

% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination


%
while wb_robot_step(TIME_STEP) ~= -1
time_step=32;
n_steps_to_achieve_target =4.0 * 1000 / time_step;
step_difference =[];
current_position =[];

for i=1:12
  current_position(i)=wb_motor_get_target_position(motors(i));
  step_difference(i) = (motors_target_pos(i) - current_position(i))/n_steps_to_achieve_target;    
end
  
for i=1:n_steps_to_achieve_target
    for j=1:12
       
       current_position(j)= current_position(j)+step_difference(j);
       wb_motor_set_position(motors(j), current_position(j));
    end
  

end
end
% cleanup code goes here: write data to files, etc.
