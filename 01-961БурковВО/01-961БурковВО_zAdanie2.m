function [] = zAdanie2(a,b,c,d,f,w)
% ��� ������� - zAdanie2(0.5,2,1,0.5,2,pi/4);
% w - ���
% ���� ��� ��������� ��������
qwerty=["m","b","r","g","c"];
asdfgh=["-","--",":","-."];
zxcvbn=["o","d","p"];
%
x=0.01:w:2*pi;
F=x;
G=x;
% � ����, ��� ����� ���� �������� ���� ��������� 4 ������, �� � ������� ������� ���
for i=1:size(x,2)
    F(i)=a*sin(b*x(i))/x(i);
    G(i)=c*exp(-d*x(i))*cos(f*x(i));
end

figure;
%
pervoe=zarandombMne(qwerty,asdfgh,zxcvbn);
%
plot(x,F,pervoe);
grid on
legend('F(x)');
title("A1")
xlabel('x');
ylabel('F(x)');

figure;
%
vtoroe=zarandombMne(qwerty,asdfgh,zxcvbn);
%
plot(x,G,vtoroe);
grid on
legend('g(x)');
title("A2")
xlabel('x');
ylabel('g(x)');

figure
%
pervoe=zarandombMne(qwerty,asdfgh,zxcvbn);
vtoroe=zarandombMne(qwerty,asdfgh,zxcvbn);
while pervoe==vtoroe
    pervoe=zarandombMne(qwerty,asdfgh,zxcvbn);
    vtoroe=zarandombMne(qwerty,asdfgh,zxcvbn);
end
%
plot(x,F,pervoe,x,G,vtoroe);
grid on
legend('F(x)','g(x)');
title("�")
xlabel('x');
ylabel('�������� �������');

figure;
%
pervoe=zarandombMne(qwerty,asdfgh,zxcvbn);
vtoroe=zarandombMne(qwerty,asdfgh,zxcvbn);
while pervoe==vtoroe
    pervoe=zarandombMne(qwerty,asdfgh,zxcvbn);
    vtoroe=zarandombMne(qwerty,asdfgh,zxcvbn);
end
%
subplot(1,2,1);
plot(x,F,pervoe);
grid on
legend('F(x)');
title("�1")
xlabel('x');
ylabel('F(x)');

subplot(1,2,2);
plot(x,G,vtoroe);
grid on
legend('g(x)');
title("�2")
xlabel('x');
ylabel('g(x)');

end
%������� ��� ������� ��������
function [rezult] = zarandombMne(qwerty,asdfgh,zxcvbn)
rezult=strcat(qwerty(randi([1,size(qwerty,2)])),asdfgh(randi([1,size(asdfgh,2)])),zxcvbn(randi([1,size(zxcvbn,2)])));
end
%
