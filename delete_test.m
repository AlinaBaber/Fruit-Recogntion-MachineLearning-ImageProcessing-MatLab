function delete_test()
imagefiles = dir('test/Crop/*.png');      
nfiles = length(imagefiles);    % Number of files found
for N=1:nfiles
   currentfilename = imagefiles(N).name;
   delete(['test/Crop/' currentfilename])
end
imagefiles = dir('test/Input/*.jpg');      
nfiles = length(imagefiles);    % Number of files found
for N=1:nfiles
   currentfilename = imagefiles(N).name;
   delete(['test/Input/' currentfilename])
end
