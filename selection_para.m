%µ±c=0.5,b=0.25Ê¹µÃdeta=0
c=0.5;
%b=0.08;
b=0.00
d=8;%c>b  
a1=b*(1-c)/c;
a2=(sqrt(c-b)-1)*(sqrt(c-b)-1);
a=0.0855;   %0.25
deta=(-1+c+a-b)*(-1+c+a-b)+4*a*(b-c);
%u1=(1-c-a+b)/(2*a);
u1=(1-c-a+b-sqrt(deta))/(2*a);
v1=((1-c)*u1-c)/u1;
%epi1=(2*a1*u1*u1+(a-b-1+c)*u1+c)/u1/((1-c)*u1-c);
%epi2=(2*a*u1*u1+(a-b-1+c)*u1+c)/u1/((1-c)*u1-c);
%epi=(2*a*u1*u1+(a-b-1+c)*u1+c)/u1/((1-c)*u1-c);
epi=d*(2*a*u1+a-b-v1)/u1/v1