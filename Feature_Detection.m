function [Fruit_Name,Quality,set_of_fruits,Fruit,fruitPoints1,set_of_fruits_Points1,fruitFeatures, fruitPoints,set_of_fruits_Features, set_of_fruits_Points,fruitPairs,matchedfruitPoints,matched_set_of_fruits_Points,tform, inlierfruitPoints,fruitPolygon,newfruitPolygon]=Feature_Detection(image_file)
File=load('fruits');
Flag=0; i=1;
while(Flag == 1)
[Flag,set_of_fruits,Fruit,fruitPoints1,set_of_fruits_Points1,fruitFeatures, fruitPoints,set_of_fruits_Features, set_of_fruits_Points,fruitPairs,matchedfruitPoints,matched_set_of_fruits_Points,tform, inlierfruitPoints,fruitPolygon,newfruitPolygon]=Image_Features(image_file,File.FilePath(i));
i=i+1;
end
Fruit_Name=File.fruit(i);
Quality=File.quality(i);
