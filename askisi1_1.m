I = [0,0,0,0,0;0,3,8,3,0;0,8,1,8,0;0,1,7,7,0;0,0,0,0,0]; % � ������ ���
filtered = double(zeros(size(I,1),size(I,2))); % �������� ���� �������� ������ ��� �� ����� �� ����������
megethos_ypopinaka = 3; % �� ������� ���� ���������
offset = megethos_ypopinaka/2 - 0.5; % � ������ ���
ypopinakas = zeros(megethos_ypopinaka,megethos_ypopinaka);
for i=1+offset:size(I,1)-offset % �������
 for j=1+offset:size(I,2)-offset % ������
 ypopinakas(:,:)=I(i-offset:i+offset,j-offset:j+offset) % ������� ��� ��������� ��� �� ������ ���� ����
 filtered(i,j) = uint8(round(mean2(ypopinakas))) % � ����� ��� ��������� �� ��� ������ ��� ���������
 end
end
