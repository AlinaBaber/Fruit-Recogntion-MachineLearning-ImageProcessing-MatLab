function [status]= preparefile(FilePath,FileName,image_file)
[pathstr,filename,ext] = fileparts(FilePath);
[pathstr,quality,ext] = fileparts(pathstr) ;
[pathstr,fruit,ext] = fileparts(pathstr) ;
File=load('fruits');
File_Name={FileName}; 
File.FileName(end+1)=File_Name; 
FileName=File.FileName;
save('fruits.mat','FileName','-append');
File_quality={quality};
quality=[File.quality;File_quality]; 
save('fruits.mat','quality','-append');
File_Path={FilePath};
File.FilePath(end+1)=File_Path; 
FilePath=File.FilePath;
save('fruits.mat','FilePath','-append');
File_fruit={fruit};
fruit=[File.fruit; File_fruit];
save('fruits.mat','fruit','-append');
%------(1)---------Features-----------
Features=test_samples_features(image_file);
File_features=Features;
features=[File.features; File_features];
save('fruits.mat','features','-append');
status=' All Features are Extracted ,File is Prepared for Training';