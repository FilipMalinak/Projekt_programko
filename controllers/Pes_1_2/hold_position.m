function [] = hold_position(duration)
initial_time=wb_robot_get_time();
while (wb_robot_get_time()- initial_time < duration)
    step();
end
end