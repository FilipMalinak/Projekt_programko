% MATLAB controller for Webots
% File:          my_controller.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
desktop;
keyboard;
NUMBER_OF_LEDS = 8
NUMBER_OF_JOINTS =12
NUMBER_OF_CAMERAS =5

TIME_STEP = 64;


% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
while wb_robot_step(TIME_STEP) ~= -1


% initialize devices
cameras = [];
camera_names = [ "left head camera", "right head camera", "left flank camera",
                               "right flank camera", "rear camera" ];

for i = 1:NUMBER_OF_CAMERAS
  cameras(i) = wb_robot_get_device(convertStringsToChars(ps_names(i)));
  wb_camera_enable(cameras(i), TIME_STEP);
end
















  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.
