function [] = give_paw(motors)
motors_target_pos_1 = [-0.20 , -0.30 , -0.05, ... %Front left leg
                     0.20,   -0.40,  -0.19, ...  %Front right leg
                     -0.40 , -0.90,  1.18, ... %Rear left leg
                     0.49,   -0.90,  0.80];     %Rear right leg

movement_decomposition(motors_target_pos_1,0.5,motors)

initial_time=wb_robot_get_time();
while (wb_robot_get_time()- initial_time < 3)
   
    time= wb_robot_get_time()
    wb_motor_set_position(motors(4), (0.1 * sin(2 * time)) + 0.39);
    wb_motor_set_position(motors(5), 0.4 * sin(2 * time)+0.1);
    step();

end

motors_target_pos_2= [-0.20 , -0.40 , -0.19, ... %Front left leg
                      0.20,   -0.40,  -0.19, ...  %Front right leg
                      -0.40 , -0.90,  1.18, ... %Rear left leg
                      0.40,   -0.90,  1.18];     %Rear right leg
                  
movement_decomposition(motors_target_pos_2,0.5,motors)                  

end