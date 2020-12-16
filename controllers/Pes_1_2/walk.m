function [] = walk(motors)
initial_time=wb_robot_get_time();

while (1)
   
    time= wb_robot_get_time()
    if (time-initial_time < 0.2)
    wb_motor_set_position(motors(2), (0.5* cos(20 * time)) -0.5);
    wb_motor_set_position(motors(3), (-0.5* cos(20 * time)) +0.5);
    wb_motor_set_position(motors(11),(0.5* cos(20 * time)) -0.5);
    wb_motor_set_position(motors(12), (-0.5* cos(20 * time)) +0.5);
    step();
    else
      wb_motor_set_position(motors(2), (0.5* cos((20 * time) +pi/2)) -0.5);
      wb_motor_set_position(motors(3), (-0.5* cos((20 * time)+pi/2)) +0.5);
      wb_motor_set_position(motors(11),(0.5* cos((20 * time) +pi/2)) -0.5);  
      wb_motor_set_position(motors(12), (-0.5* cos((20 * time)+pi/2)) +0.5);
      
      wb_motor_set_position(motors(5), (0.5* cos(20 * time)) -0.5);
      wb_motor_set_position(motors(6), (-0.5* cos(20 * time)) +0.5);
      wb_motor_set_position(motors(8),(0.5* cos(20 * time)) -0.5);
      wb_motor_set_position(motors(9), (-0.5* cos(20 * time)) +0.5);
     step(); 
    end
end




end