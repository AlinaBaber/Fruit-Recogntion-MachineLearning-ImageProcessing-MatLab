function [Status] = knn_training()
File=load('fruits');
%==================Fruit Classification======================================%
rng(100);
KNNStruct_features_fruit = fitcknn(File.features,File.fruit,'NumNeighbors',1,'Standardize',1,'NSMethod','exhaustive','Distance','cosine');
save('knnmodels.mat','KNNStruct_features_fruit','-append');
%===================Quality Classification==========================%
rng(100);
KNNStruct_features_quality = fitcknn(File.features,File.quality,'NumNeighbors',1,'Standardize',1,'NSMethod','exhaustive','Distance','cosine');
save('knnmodels.mat','KNNStruct_features_quality','-append');
Status='K Kearest Neighbor Model has been trained.';
