%{
    功能：仿真环境的配置
    作者：小思同学（EXPSIN）
    日期：2020年09月13日
    Copyright (c) 2020 WuSi All rights reserved.
%}

function SC = sim_config()

% 仿真步长 [sec]
SC.T = 1e-3;

% 仿真时间 [sec]
SC.time = 15;
SC.t = 0:SC.T:SC.time;

% 仿真步数 
SC.N = length(SC.t);

end