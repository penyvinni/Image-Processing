I = [0,0,0,0,0;0,3,8,3,0;0,8,1,8,0;0,1,7,7,0;0,0,0,0,0]; % η εικονα μας
filtered = double(zeros(size(I,1),size(I,2))); % φτιαχνει εναν μηδενικο πινακα που θα ειναι το αποτελεσμα
megethos_ypopinaka = 3; % το μεγεθος καθε υποπινακα
offset = megethos_ypopinaka/2 - 0.5; % η ακτινα του
ypopinakas = zeros(megethos_ypopinaka,megethos_ypopinaka);
for i=1+offset:size(I,1)-offset % γραμμες
 for j=1+offset:size(I,2)-offset % στήλες
 ypopinakas(:,:)=I(i-offset:i+offset,j-offset:j+offset) % δηλωνει τον υποπινακα που θα τρεχει καθε φορα
 filtered(i,j) = uint8(round(mean2(ypopinakas))) % η πραξη της διαιρεσης με τον αριθμο του υποπινακα
 end
end
