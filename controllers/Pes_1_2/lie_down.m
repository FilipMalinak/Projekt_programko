function [] = lie_down(duration,motors)

motors_target_pos = [-0.40 , -0.99 , 1.59, ... %Front left leg
                     0.40,   -0.99, 1.59, ...  %Front right leg
                     -0.40 , -0.99 , 1.59, ... %Rear left leg
                     0.40,   -0.99, 1.59];     %Rear right leg

movement_decomposition(motors_target_pos,duration,motors)


end

