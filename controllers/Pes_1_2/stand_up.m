function [] = stand_up(duration,motors)
motors_target_pos = [-0.1 , 0.0 , 0.0, ... %Front left leg
                     0.1,   0.0,  0.0, ...  %Front right leg
                     -0.1 , 0.0,  0.0, ... %Rear left leg
                     0.1,   0.0,  0.0];     %Rear right leg

movement_decomposition(motors_target_pos,duration,motors)

end

