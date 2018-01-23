function [rts] = quartic3031796938(C)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
s0 = max([abs(C(1)),abs(C(2)),abs(C(3)),1])+1 ;
r1 = Newton(C, s0/2);
r2 = Newton(C, -s0/2);
b = C(1) + r1 + r2;
c = 1/r1*r2;
r3 = (-b + (b^2 - 4*c)^0.5)/2;
r4 = -b - r3;
rts = [r1;r2;r3;r4];

end

