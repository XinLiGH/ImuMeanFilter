clc;    %清空命令行窗口
clear;  %清空工作区

data = dlmread('data.dat');     %从文本中读取数据，速率：100Hz

gyro_original = data(:, 3:5);   %陀螺原始数据，单位：deg/s
acc_original  = data(:, 7:9);   %加计原始数据，单位：g

gyro_mean_1s = filter_mean(gyro_original, 100);     %陀螺1s均值滤波
acc_mean_1s  = filter_mean(acc_original, 100);      %加计1s均值滤波

gyro_mean_10s = filter_mean(gyro_original, 1000);   %陀螺10s均值滤波
acc_mean_10s  = filter_mean(acc_original, 1000);    %加计10s均值滤波

time_original = 0:0.01:(length(gyro_original) - 1) * 0.01;  %生成时间数据，间隔0.01s
time_mean_1s  = 0:1:(length(gyro_mean_1s) - 1) * 1;         %生成时间数据，间隔1s
time_mean_10s = 0:10:(length(gyro_mean_10s) - 1) * 10;      %生成时间数据，间隔10s

figure('name', '原始数据'); %新建绘图窗口

subplot(2, 3, 1);                           %第一幅子图
plot(time_original, gyro_original(:, 1));   %绘图
title('陀螺 X轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_x(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 2);                           %第二幅子图
plot(time_original, gyro_original(:, 2));   %绘图
title('陀螺 Y轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_y(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 3);                           %第三幅子图
plot(time_original, gyro_original(:, 3));   %绘图
title('陀螺 Z轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_z(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 4);                           %第四幅子图
plot(time_original, acc_original(:, 1));    %绘图
title('加计 X轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_x(g)');                         %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 5);                           %第五幅子图
plot(time_original, acc_original(:, 2));    %绘图
title('加计 Y轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_y(g)');                         %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 6);                           %第六幅子图
plot(time_original, acc_original(:, 3));    %绘图
title('加计 Z轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_z(g)');                         %添加y轴标签
grid on;                                    %添加网格线

figure('name', '1s均值'); %新建绘图窗口

subplot(2, 3, 1);                           %第一幅子图
plot(time_mean_1s, gyro_mean_1s(:, 1));     %绘图
title('陀螺 X轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_x(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 2);                           %第二幅子图
plot(time_mean_1s, gyro_mean_1s(:, 2));     %绘图
title('陀螺 Y轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_y(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 3);                           %第三幅子图
plot(time_mean_1s, gyro_mean_1s(:, 3));     %绘图
title('陀螺 Z轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_z(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 4);                           %第四幅子图
plot(time_mean_1s, acc_mean_1s(:, 1));      %绘图
title('加计 X轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_x(g)');                         %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 5);                           %第五幅子图
plot(time_mean_1s, acc_mean_1s(:, 2));      %绘图
title('加计 Y轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_y(g)');                         %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 6);                           %第六幅子图
plot(time_mean_1s, acc_mean_1s(:, 3));      %绘图
title('加计 Z轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_z(g)');                         %添加y轴标签
grid on;                                    %添加网格线

figure('name', '10s均值'); %新建绘图窗口

subplot(2, 3, 1);                           %第一幅子图
plot(time_mean_10s, gyro_mean_10s(:, 1));   %绘图
title('陀螺 X轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_x(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 2);                           %第二幅子图
plot(time_mean_10s, gyro_mean_10s(:, 2));   %绘图
title('陀螺 Y轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_y(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 3);                           %第三幅子图
plot(time_mean_10s, gyro_mean_10s(:, 3));   %绘图
title('陀螺 Z轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('gyro_z(deg/s)');                    %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 4);                           %第四幅子图
plot(time_mean_10s, acc_mean_10s(:, 1));    %绘图
title('加计 X轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_x(g)');                         %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 5);                           %第五幅子图
plot(time_mean_10s, acc_mean_10s(:, 2));    %绘图
title('加计 Y轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_y(g)');                         %添加y轴标签
grid on;                                    %添加网格线

subplot(2, 3, 6);                           %第六幅子图
plot(time_mean_10s, acc_mean_10s(:, 3));    %绘图
title('加计 Z轴');                          %添加标题
xlabel('time(sec)');                        %添加x轴标签
ylabel('acc_z(g)');                         %添加y轴标签
grid on;                                    %添加网格线
