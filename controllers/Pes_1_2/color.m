function [color] = color(image)

RGB(3) = sum(sum(image(:,:,3)));
RGB(1) = sum(sum(image(:,:,1)));
RGB(2) = sum(sum(image(:,:,2)));

[M,I] = max(RGB);

if RGB(I)> 50000000
  color=I 
  
else
  color=4;  
end




end