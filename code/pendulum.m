%{
    功能：单摆的数学模型，参考 Khalil, Hassan K., and Jessy W. Grizzle. Nonlinear systems. Vol. 3. Upper Saddle River, NJ: Prentice hall, 2002.
    作者：小思同学（EXPSIN）
    日期：2020年09月13日
    Copyright (c) 2020 WuSi All rights reserved.
%}

function dx = pendulum(x, u, data)
%{
    x ∈ R^{2 × 1}
    x(1) 角度
    x(2) 角速度

    u ∈ R^{1 × 1}
    u 单摆的力矩
%}

dx = [
  x(2);
  -data.g/data.L*sin(x(1)) - data.k/data.m*x(2) + 1/data.m/(data.L)^2*u;
];


end