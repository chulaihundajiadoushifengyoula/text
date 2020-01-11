clc
clear

mu=1/4+0.1;
x=-2:0.01:2;
y=-2:0.01:2;
[X1,Y1]=meshgrid(x,y);
H=(1/2)*exp(-2*Y1).*(Y1.^2+Y1-mu+1/2-X1.^2);
figure
%%%找出周期轨道的两个分界点为h和0
h=1/2*(1/2-mu) %(x,y)=(0,0)解出H=h
contour(X1,Y1,H,[0,0],'b')%H=0
hold on 
%%%(0,h)之间为周期轨道
contour(X1,Y1,H,[h/1000,h/1000],'y')
contour(X1,Y1,H,[h/100,h/100],'k')
contour(X1,Y1,H,[h/10,h/10],'g')
contour(X1,Y1,H,[h,h],'r')

%%%(-infinity,0]对应无界解
contour(X1,Y1,H,[-0.001,-0.001],'m')
contour(X1,Y1,H,[-0.01,-0.01],'m')
contour(X1,Y1,H,[-0.1,-0.1],'m')
contour(X1,Y1,H,[-1,-1],'m')

%[h,infinity)
contour(X1,Y1,H,[h+0.001,h+0.001],'k')
contour(X1,Y1,H,[h+0.01,h+0.01],'k')
contour(X1,Y1,H,[h+0.1,h+0.1],'k')
contour(X1,Y1,H,[h+1,h+1],'k')



xlabel('x_{2}');
ylabel('y_{2}');
title('equ.9')