function [Fruit_Error_Rate,Fruit_Accuracy_Rate,Quality_Error_Rate,Quality_Accuracy_Rate,Fruit,Quality]= KNN_Test()
MFile=load('knnmodels');
File=load('fruits');
%==================Speech Disorder======================================%
[Fruit,Fruit_score,Fruit_cost] = predict(MFile.KNNStruct_features_fruit,File.features);
KNN_Fruit_Analysis = classperf(File.fruit,Fruit);
Fruit_Error_Rate=KNN_Fruit_Analysis.ErrorRate;
Fruit_Accuracy_Rate=KNN_Fruit_Analysis.CorrectRate;
%==================Speech Emotions======================================%
[Quality,Quality_score,Quality_cost] = predict(MFile.KNNStruct_features_quality,File.features);
KNN_Quality_Analysis = classperf(File.quality,Quality);
Quality_Error_Rate=KNN_Quality_Analysis.ErrorRate;
Quality_Accuracy_Rate=KNN_Quality_Analysis.CorrectRate;