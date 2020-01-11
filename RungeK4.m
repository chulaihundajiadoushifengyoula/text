function [x,y]=RungeK4(dyfun,xspan,y0,h) 
x=xspan(1):h:xspan(2);
y=zeros(length(y0),length(x));
y(:,1)=y0(:);
for n=1:length(x)-1
K1=feval(dyfun,x(n),y(:,n));
K2=feval(dyfun,x(n)+1/2*h,y(:,n)+h/2*K1);
K3=feval(dyfun,x(n)+1/2*h,y(:,n)+h/2*K2);
K4=feval(dyfun,x(n)+h,y(:,n)+h*K3);
y(:,n+1)=y(:,n)+(h/6).*(K1+2*K2+2*K3+K4);
end
