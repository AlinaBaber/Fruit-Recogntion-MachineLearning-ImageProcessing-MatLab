function Features=test_samples_features(image_file)
[mean_cluster_value]=Color_Detection(image_file);
[area,centroid,Distance,ratio]=area_feature(image_file);
Features=[transpose(mean_cluster_value),area,centroid,Distance,ratio];