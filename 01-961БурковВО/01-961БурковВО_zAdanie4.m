function [] = zAdanie4(arr)
% ������� 4, ������� ������ arr=[50,45,51,55,79,90,110,100,92,76,79,88];
nameArr=categorical({'������','�������','����','������','���','����','����','������','��������','�������','������','�������'});
namepieArr={'������','�������','����','������','���','����','����','������','��������','�������','������','�������'};
figure;
subplot(2,2,[1,2]);
barh(nameArr,arr,'FaceColor',[0,0.5,0.5],'EdgeColor',[1,0,1],'LineWidth',0.4);
title('���������� ��������');
subplot(2,2,3);
pie(arr);
lgd=legend(namepieArr,'Location','eastoutside','TextColor','blue');
title(lgd,'���������� �������� ��')
end

