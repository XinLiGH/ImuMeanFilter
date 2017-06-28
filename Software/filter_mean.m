function [ y ] = filter_mean( x, n )
% [ y ] = filter_mean( x, n ) 均值滤波函数
% x：数据
% n：参数
% 注意：当数据为二维数组时，按列求均值
if (n == floor(n)) && (n > 0)
    if n > 1
        [line, row] = size(x);
        if line > 1
            if line >= n
               for i = 1 : floor(line / n)
                   y(i, :) = mean(x((((i - 1) * n) + 1) : (i * n), :));
               end
            else
                error('“filter_mean”函数调用错误！');
            end
        else
            if row >= n
                for i = 1 : floor(row / n)
                   y(:, i) = mean(x(:, (((i - 1) * n) + 1) : (i * n)));
               end
            else
                error('“filter_mean”函数调用错误！');
            end
        end
    else
        y = x;
    end
else
    error('“filter_mean”函数调用错误！');
end
