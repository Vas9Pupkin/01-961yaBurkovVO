function [outputArg1] = zAdanie1(arr)
%Задание 1 второго варианта. На входе массив
%Пример входного массива arr=[1,2,3;4,5,6;-1,-2,-3;-4,-5,-6];
try
    a=size(arr,1);
    b=size(arr,2);
    for i=1:a
        for j=1:b
            if i<=j && j<=a
                if arr(i,j)>0
                    arr(i,j)=1;
                else
                    arr(i,j)=0;
                end
                
            end
        end
        
    end
catch
    disp('Произошла ошибка. С чем это связанно не знаю, я просто программка, сделанная за 5 минут. Убедитесь, что на входе массив')
end
outputArg1 = arr;
end

