function [] = step()
time_step=wb_robot_get_basic_time_step();
if wb_robot_step(time_step) == -1
 wb_robot_cleanup();
 exit(0);
end
end

