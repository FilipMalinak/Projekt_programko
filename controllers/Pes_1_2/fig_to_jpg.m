
function image_rgb = fig_to_jpg(figs)

for K = 1 : length(figs)
   image_rgb = 'blue.jpg';
   saveas(figs(K), image_rgb);
end
end
