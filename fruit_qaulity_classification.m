function [Results,Total]=fruit_qaulity_classification(Input)
Total=Fruit_Crop(Input);
[Results,nfiles]=read_test();
Total=nfiles;