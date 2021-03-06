function [] = walk_av(motors)
initial_time=wb_robot_get_time();
motors_target_pos = [-0.2 , 0.0 , 0.0, ... %Front left leg
                     0.2,   0.0,  0.0, ...  %Front right leg
                     -0.2 , 0.0,  0.0, ... %Rear left leg
                     0.2,   0.0,  0.0];     %Rear right leg

movement_decomposition(motors_target_pos,2,motors)


while (1)
   
    time= wb_robot_get_time()
    if (time-initial_time < pi/21)
    wb_motor_set_position(motors(2), (0.5* cos(21 * time)) -0.5);
    wb_motor_set_position(motors(3), (-0.5* cos(21 * time)) +0.5);
    wb_motor_set_position(motors(11),(0.5* cos(21 * time)) -0.5);
    wb_motor_set_position(motors(12), (-0.5* cos(21 * time)) +0.5);
    step();
    else
      wb_motor_set_position(motors(2), (0.5* cos((21 * time +pi)) -0.5));
      wb_motor_set_position(motors(3), (-0.5* cos((21 * time +pi)) +0.5));
      wb_motor_set_position(motors(11),(0.5* cos((21 * time +pi)) -0.5));  
      wb_motor_set_position(motors(12), (-0.5* cos((21 * time +pi)) +0.5));
      
      wb_motor_set_position(motors(5), (0.5* cos(21 * time)) -0.5);
      wb_motor_set_position(motors(6), (-0.5* cos(21 * time)) +0.5);
      wb_motor_set_position(motors(8),(0.5* cos(21 * time)) -0.5);
      wb_motor_set_position(motors(9), (-0.5* cos(21 * time)) +0.5);
     step(); 
    end
end




end