I=imread('lenna3.png');
I_1 = imnoise(I, 'salt & pepper', 0.05);
I_filtered = I_1;
for layer=1:3
    I_filtered(:,:,layer) = wiener2(I_1(:,:,layer), [5 5]);
end
figure, imshow(I_1)
figure,imshow(I_filtered)

