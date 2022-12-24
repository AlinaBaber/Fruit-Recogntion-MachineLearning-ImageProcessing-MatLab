function Total=Fruit_Crop(Input)
A=imread(Input);
figure,imshow(A); title('Original Image');
%Convert the Image to binary
%B=im2bw(A);
 [B,maskedRGBImage] = createMask(A);
%Fill the holes
C=imfill(B,'holes');
 
%Label the connected components
[Label,Total]=bwlabel(C,4);
figure,imshow(C); title('Labelled Image');
%Rectangle containing the region
Sdata=regionprops(Label,'BoundingBox');

for i=1:Total
    Img=imcrop(A,Sdata(i).BoundingBox);
    Image_size=length(Img);
    if (Image_size>50)
    Name=strcat('Fruit Number:',num2str(i));
    N=num2str(i);
    figure,imshow(Img); %title(Name);
     
    saveas(gcf, ['test/Crop/' N '.png']);
    
    end
end



    

