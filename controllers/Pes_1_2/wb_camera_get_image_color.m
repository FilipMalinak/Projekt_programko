function [r, g, b] = wb_camera_get_image_color(image);
r = image(half_width,half_heigth,1);% red color component of the pixel lying in the middle of the image
g = sum(image(half_width,:,2));% sum of the green color over the vertical middle line of the image
b = sum(sum(image(:,:,3));% sum of the blue color over all the pixels in the image
fprintf('red_middle_point = %d, green_middle_line = %d, blue_overall = %d\n', r, g, b);
end