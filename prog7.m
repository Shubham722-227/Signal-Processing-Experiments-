clc
clear all
tt=0:0.01:10;
bb=sin(tt);
cc=cos(tt);
figureh
subplot(1,2,1)
plot(tt,bb)
subplot(1,2,2)
plot(tt,cc)

figure
subplot(2,1,1)
plot(tt,bb)
subplot(2,1,2)
plot(tt,cc)
