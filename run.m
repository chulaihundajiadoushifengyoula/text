clear
clc
[t,y]=RungeK4(@f,[0 100],[-1 1],0.001);
plot(y(1,:),y(2,:))