function Result=fruit_knn_classification(image_file)
Features=test_samples_features(image_file);
MFile= load('knnmodels');
%==================Speech Disorder======================================%
%----(1)----------Frequency--------------
[Category,Category_score,Category_cost] = predict(MFile.KNNStruct_features_fruit,Features);
%----(2)--------- Pitch Contour-----------
[Quality,Quality_score,Quality_cost] = predict(MFile.KNNStruct_features_quality,Features);
 Result=[Category,Quality];