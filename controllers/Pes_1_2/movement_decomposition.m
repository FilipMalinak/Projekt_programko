function [] = movement_decomposition(target,duration,motors)
time_step=64;
n_steps_to_achieve_target =duration * 1000 / time_step;
step_difference =[];
current_positon =[];

for i=1:12
  current_position(i)=wb_motor_get_target_position(motors(i));
  step_difference(i) = (target(i) - current_position(i))/n_steps_to_achieve_target;    
end

for i=1:n_steps_to_achieve_target
    for j=1:12
       
       curremt_positiom(j)= current_position(j)+step_difference(j);
       wb_motor_set_position(motors(j), current_position(j));
    end
end

