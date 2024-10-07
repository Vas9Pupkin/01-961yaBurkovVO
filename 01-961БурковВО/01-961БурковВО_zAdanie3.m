function [] = zAdanie3(a,b,c)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% Вариант 2
% a=0.5;
% b=1;
% c=2;
[x,y]=meshgrid(-1:0.1:1, -1:0.1:1);
z=(sin(a*x.^2)+cos(b*y.^2)).^c;
figure;
surf(x,y,z);
title('A1');
figure;
mesh(x,y,z);
title('A2');
figure;
subplot (2,1,1);
surf(x,y,z);
title('B1');
subplot (2,1,2);
mesh(x,y,z);
title('B2');
end

