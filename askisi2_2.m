A = imread('lenna2.png');
figure, imshow(A);
AInv = imcomplement(A);
figure, imshow(AInv);
BInv = imreducehaze(AInv);
figure, imshow(BInv);
B = imcomplement(BInv);
figure, imshow(B);
