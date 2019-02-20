close all;
clear all;
image=imread('hw8.tif');
image1=regionGrow(image,0.035);
figure, imshow(image1);
bg=image;
image2=image;
[m n]=size(image);
for i=1:m
    for j=1:n
        if(image1(i,j)==0)
            bg(i,j)=0;
        end
    end
end
figure, imshow(bg);
%imwrite(bg,'bg.jpg','jpg');
for i=1:m
    for j=1:n
        if(image1(i,j)==1)
            image2(i,j)=1;
        end
    end
end
image4=image2;
image3=regionGrow(image2,0.35);
for i=1:m
    for j=1:n
        if(image3(i,j)==0)
            image4(i,j)=image3(i,j);
        end
    end
end
figure, imshow(image4);
%imwrite(image4,'cell1.jpg','jpg');
image5=image2;
image6=regionGrow(image2,0.35);
for i=1:m
    for j=1:n
        if(image6(i,j)==0)
            image5(i,j)=image6(i,j);
        end
    end
end
figure, imshow(image5);
%imwrite(image5,'cell2.jpg','jpg');