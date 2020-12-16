% MATLAB controller for Webots
% File:          my_controller.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:

NUMBER_OF_LEDS = 8;
NUMBER_OF_JOINTS =12;
NUMBER_OF_CAMERAS =5;

TIME_STEP = 64;

%desktop;
%keyboard;

% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%



% initialize devices
cameras = [];
camera_names = [ "left head camera_right head camera_left flank camera_right flank camera_rear camera" ];

  
  cameras(1) = wb_robot_get_device('left head camera');
  wb_camera_enable(cameras(1), TIME_STEP);
  
  cameras(2) = wb_robot_get_device('right head camera');
  %wb_camera_enable(cameras(2), TIME_STEP);
  
  cameras(3) = wb_robot_get_device('left flank camera');
  %wb_camera_enable(cameras(3), TIME_STEP);
  
  cameras(4) = wb_robot_get_device('right flank camera');
  %wb_camera_enable(cameras(4), TIME_STEP);
  
  cameras(5) = wb_robot_get_device('rear camera');
  %wb_camera_enable(cameras(5), TIME_STEP);


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


leds=[];
leds(1) = wb_robot_get_device('left top led');
leds(2) = wb_robot_get_device('left middle up led');
leds(3) = wb_robot_get_device('left middle down led');
leds(4) = wb_robot_get_device('left bottom led');
leds(5) = wb_robot_get_device('right top led');
leds(6) = wb_robot_get_device('right middle up led');
leds(7) = wb_robot_get_device('right middle down led');
leds(8) = wb_robot_get_device('right bottom led');



  

while wb_robot_step(TIME_STEP) ~= -1  
  
  lie_down(2.0,motors);
  stand_up(0.2,motors);
  lie_down(2.0,motors);
  stand_up(2.0,motors);
  sit_down(2.0,motors);
  hold_position(2.0);
  stand_up(2.0,motors);
  give_paw(motors);
  stand_up(2.0,motors);
end
















  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;



% cleanup code goes here: write data to files, etc.
