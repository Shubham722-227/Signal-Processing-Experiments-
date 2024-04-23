clc;
clear all;

tt = 0:0.01:10;
bb = sin(tt);
cc = sin(tt) * 4;  % Multiplication
dd = sin(tt) + 4;  % Addition
ee = sin(tt) - 4;  % Subtraction
ff = sin(tt) / 4;  % Division

plot(tt, bb)
xlabel('Time (s)')
ylabel('Amplitude')
%title('Original Signal')

hold on

%plot(tt, cc)
%xlabel('Time (s)')
%ylabel('Amplitude')
%title('Amplitude (Multiplication)')

%hold on

%plot(tt, dd)
%xlabel('Time (s)')
%ylabel('Amplitude')
%title('Amplitude (Addition)')

#hold on

plot(tt, ee)
xlabel('Time (s)')
ylabel('Amplitude')
title('Amplitude (Subtraction)')
hold on

#plot(tt, ff)
%xlabel('Time (s)')
%ylabel('Amplitude')
%title('Amplitude (Division)')

