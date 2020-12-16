function [] = sit_down(duration,motors)
motors_target_pos = [-0.20 , -0.40 , -0.19, ... %Front left leg
                     0.20,   -0.40,  -0.19, ...  %Front right leg
                     -0.40 , -0.90,  1.18, ... %Rear left leg
                     0.40,   -0.90,  1.18];     %Rear right leg

movement_decomposition(motors_target_pos,duration,motors)

end

