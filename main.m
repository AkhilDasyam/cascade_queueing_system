clc 
clear all
close all

[Dtimes,Ctimes]   = Qx1(0.5,0.2525);
[Dtimes1, Ctimes1]= Qx2(Dtimes,0.5102);
[Dtimes2, Ctimes2]= Qx2(Dtimes1,0.5154);


[bins,p]=acNhist2(Dtimes);
[bins1,p1]=acNhist2(Dtimes1);
[bins2,p2]=acNhist2(Dtimes2);
figure,
plot(bins,p,'k','LineWidth',2), hold on,
plot(bins1,p1,'r','LineWidth',2),hold on,
plot(bins2,p2,'b','LineWidth',2),hold on,
title('Distributions of service rates of systems A,B and C')
legend('muA(1+2)','muB','muC')
grid minor
 hold off;





