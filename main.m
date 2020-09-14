%{
    功能：单摆仿真
    作者：小思同学（EXPSIN）
    日期：2020年09月13日
    说明：本程序编写于MATLAB R2017b，未针对其他版本的matlab进行测试
    Copyright (c) 2020 WuSi All rights reserved.
%}

close all; clear; clc;
addpath('./code');              % 添加代码路径

cfg  = sim_config();            % 仿真配置
pend = sim_pendulum();          % 被控对象（摆的配置）
SG   = sim_graphic(pend);     	% 图形化界面
 
for i = 1:cfg.N
    t = cfg.t(i);

    % 控制器
    pend.u = controller(pend.x, pend.data);
    
    % 被控对象
    pend.x = rungekutta(@pendulum, pend.x, pend.u, cfg.T, pend.data);
    
    % 图像化界面
    graphic_update(SG, pend, t );
end


