%{
    功能：图形界面更新
    作者：小思同学（EXPSIN）
    日期：2020年09月13日
    Copyright (c) 2020 WuSi All rights reserved.
%}
function graphic_update(SG, pend, t)
% 单摆的角度
theta = pend.x(1);

% 末端坐标
x =  pend.data.L * sin(theta);
y = -pend.data.L * cos(theta);

% 更新摆的图形
SG.pend1.XData = [0; x];
SG.pend1.YData = [0; y];
SG.pend2.XData = x + SG.cir(1, :);
SG.pend2.YData = y + SG.cir(2, :);

% 更新时间图形
SG.time.String = sprintf('%3.2f s', t);


addpoints(SG.theta_ref, t, pend.exp_x(1));  % 更新 角度设定值
addpoints(SG.omega_ref, t, pend.exp_x(2));  % 更新 角速度设定值
addpoints(SG.theta, t, pend.x(1));          % 更新 角度
addpoints(SG.omega, t, pend.x(2));          % 更新 角速度
addpoints(SG.T, t, pend.u);                 % 更新 力矩

% drawnow
drawnow limitrate;
end