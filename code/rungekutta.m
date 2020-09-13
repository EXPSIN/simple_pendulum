%{
    功能：rungekutta 求解
    作者：小思同学（EXPSIN）
    日期：2020年09月13日
    Copyright (c) 2020 WuSi All rights reserved.
%}

function x = rungekutta(fun, x0, u, h, data)
%{
    fun - 被控对象的微分方程模型
    x0 - 被控对象的初始状态
    u  - 被控对象的输入
    h  - 仿真步长
    data - 被控对象的配置文件
%}

% FcnHandlesUsed  = isa(fun,'function_handle');
k1 = fun(x0       , u, data); % 本步长 - 斜率
k2 = fun(x0+h/2*k1, u, data); % 本步长+1/2步长 - 的斜率
k3 = fun(x0+h/2*k2, u, data); % 本步长+1/2步长 - 的斜率
k4 = fun(x0+  h*k3, u, data); % 下一个步长的斜率
x = x0 + h/6*(k1 + 2*k2 + 2*k3 + k4);
end