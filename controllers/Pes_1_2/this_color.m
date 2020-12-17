
function color = this_color(cameras(1))

R_pixels = image_rgb (:,:,1);
G_pixels = image_rgb (:,:,2);
B_pixels = image_rgb (:,:,3);

R_vector_size = size(R_pixels);
R_size = R_vector_size(1) * R_vector_size(2);
G_vector_size = size(G_pixels);
G_size = G_vector_size(1) * G_vector_size(2);
B_vector_size = size(B_pixels);
B_size = B_vector_size(1) * B_vector_size(2);

R_value = sum(R_pixels, 'all') / R_size;
G_value = sum(G_pixels, 'all') / G_size;
B_value = sum(B_pixels, 'all') / B_size;

m = 0;

for i = 1:6

 switch  m 
    case 0
        if R_value>128 && G_value<128 && B_value<128 
            color = 1;
            break
        else
           m = 1;          
        end
        
    case 1
    if R_value>220 && G_value>220 && B_value>220
        color = 2;
        break
    else
        m = 2;
    end
    
    case 2
        if R_value<32 && G_value<32 && B_value<32
           color = 3;
           break
        else
            m = 3;
        end
    case 3 
        if R_value<128 && G_value<128 && B_value>128
            color = 4;
            break
        else
            m = 4;
        end
     case 4
         if R_value>128 && G_value>128 && B_value<128
             color = 5;
             break
         else
             m = 5;
         end
    case 5
        color = 6;
        break
        end
                
end    

end



