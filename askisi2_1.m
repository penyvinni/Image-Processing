I = imread('lenna1.png');
filtered = uint8(zeros(size(I,1),size(I,2))); % φτιαχνει την τελικη εικονα με μηδενικα στην αρχη
megethos_ypopinaka = 3; % το μεγεθος του υποπινακα
offset = megethos_ypopinaka/2 - 0.5; % η ακτινα του
ypopinakas = zeros(megethos_ypopinaka,megethos_ypopinaka); % ο τυπος του υποπινακα καθε φορα
for i=1+offset:size(I,1)-offset % γραμμές
 for j=1+offset:size(I,2)-offset % στήλες
 ypopinakas(:,:)=I(i-offset:i+offset,j-offset:j+offset); % ο τρεχον υποπινακας καθε φορα
 line_ypopinaka = ypopinakas(:);
 median_ypopinaka = median(line_ypopinaka);  % το φιλτρο
 filtered(i,j) = median_ypopinaka;
 
 end
end
figure, imshow(I)
figure, imshow(filtered)
