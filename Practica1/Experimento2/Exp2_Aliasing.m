clc;clear;close;
%% a) fa = 1000Hz | fs = 40kHz
fa = 1000;
fs = 40e3;
ts = 1/fs;

t = 0:ts:5;

y = cos(2*pi*fa*t);

plot(t,y,'k','LineWidth',1)
hold on
axis([0 5e-3 -1 1])
title(sprintf('Teorema del muestreo - Aliasing'));

sound(y,fs)
%% b) fa = 1000Hz | fs = 1500Hz
fa = 1000;
fs = 1500;
ts = 1/fs;

t = 0:ts:5;

y = cos(2*pi*fa*t);

stem(t,y,'r','MarkerSize',10,'LineWidth',1)
axis([0 5e-3 -1 1])

sound(y,fs)
%% C) fa = 500Hz | fs = 40kHz

fa = 500;
fs = 40e3;
ts = 1/fs;

t = 0:ts:5;

y = cos(2*pi*fa*t);
plot(t,y,'m','LineWidth',1)
axis([0 5e-3 -1 1])

sound(y,fs)


legend('fa = 1000Hz - fs = 40KHz','fa = 1000Hz - fs = 1500Hz','fa = 500Hz - fs = 40kHz')
