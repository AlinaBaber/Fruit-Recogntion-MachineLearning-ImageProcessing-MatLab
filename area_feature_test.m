function [area,centroid,Distance,ratio]=area_feature_test(image_file)
fruit = imread(image_file);
figure(1), imshow(fruit), title('Orignal Image');
gray_image = rgb2gray(fruit);
[BWs,maskedRGBImage] = createMask(fruit);
figure(2), imshow(BWs);title('Threshold BW Image');
%--------Area-------------
area = bwarea(BWs);
%--------Centroid-----------
[row,column]=find(BWs==1);
mean_row=mean(row);
mean_col=mean(column);
centroid=[mean_row,mean_col];
%--------Perimeters----------
perimeter = bwperim(BWs);
gray_image=gray_image(perimeter);
Distance = mean(pdist(gray_image));

ratio = 4 * 3.1714 * area / ( Distance.^2 );
%figure(2), imshow(ratio);title('Gray Scale');