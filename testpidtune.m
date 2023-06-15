% clc 
% s=tf('s');
% gss=(10/(s^2+5*s+30));
% % p=poles(gs);
% step(gss);
% pidTuner(gss,'PID')
%  x=1:length(s1);
%  hold on;
%  gp=feedback(gss*C,1)
% step(gp);
%  legend
% figure('Name','poles');
% plot(x,s1)
% hold on
% plot(x,s2)
% 
x=-10:1:10
y=zeros(length(x))
plot(x,y)
hold on
z=x;
l=zeros(length(z))
plot(l,z)



