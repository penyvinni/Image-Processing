I = imread('lenna1.png');
filtered = uint8(zeros(size(I,1),size(I,2))); % �������� ��� ������ ������ �� �������� ���� ����
megethos_ypopinaka = 3; % �� ������� ��� ���������
offset = megethos_ypopinaka/2 - 0.5; % � ������ ���
ypopinakas = zeros(megethos_ypopinaka,megethos_ypopinaka); % � ����� ��� ��������� ���� ����
for i=1+offset:size(I,1)-offset % �������
 for j=1+offset:size(I,2)-offset % ������
 ypopinakas(:,:)=I(i-offset:i+offset,j-offset:j+offset); % � ������ ���������� ���� ����
 line_ypopinaka = ypopinakas(:);
 median_ypopinaka = median(line_ypopinaka);  % �� ������
 filtered(i,j) = median_ypopinaka;
 
 end
end
figure, imshow(I)
figure, imshow(filtered)
