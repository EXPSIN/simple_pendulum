%{
    功能：单摆的数学模型
    作者：小思同学（EXPSIN）
    日期：2020年09月13日
    Copyright (c) 2020 WuSi All rights reserved.
%}

function  pend = sim_pendulum()

pend.data.L = 1.0;    % 单摆的长度，假设摆杆是一个轻质长杆[meter]
pend.data.m = 1;      % 单摆的质量，假设质量集中到单摆末端[kg]
pend.data.g = 9.8;    % 重力加速度[m×s^-2]
pend.data.R = 0.1;    % 摆锤的半径[meter]
pend.data.k = 0.1;    % 摆摩擦系数（一般情况下，摩擦系数均小于1）

pend.x = randn(2,1);          % 系统状态量 x(1)-角度， x(2)-角速度
pend.u = zeros(1,1);          % 输入变量
pend.exp_x = [pi/5; 0];       % 期望状态量

end

