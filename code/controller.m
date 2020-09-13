%{
    功能：控制器设计
    作者：小思同学（EXPSIN）
    日期：2020年09月13日
    Copyright (c) 2020 WuSi All rights reserved.
%}

function u = controller(x, data)
% 期望设定值
exp_x = [pi; 0];
err_x = exp_x - x;
err_x(1) = AngleLimit(err_x(1), -pi, pi);

u_x   = [5; 1].*err_x;

% 计算控制律
u     = (u_x(2) + data.g/data.L*sin(x(1))+data.k/data.m*u_x(1))*data.m*data.L^2;

end