function [Results,nfiles]=read_test()
imagefiles = dir('test/Crop/*.png');      
nfiles = length(imagefiles);    % Number of files found
if (nfiles == 1)
     currentfilename= ['test/Crop/'+imagefiles.name(1)]
     Result=fruit_knn_classification(currentfilename);
     Results(1,1:2) = Result;
end
for ii=1:nfiles
   currentfilename = 'test/Crop/'+imagefiles(ii).name;
   currentfilename
  % im=imread(currentfilename);
   %Result=fruit_knn_classification(currentfilename);
   %Results(ii,1:2) = Result;

end
