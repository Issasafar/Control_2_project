 world=vrworld('servovr.x3d');
 open(world);
 fig=view(world,'-internal');
 vrdrawnow;
 nodes(world)
 rotor=vrnode(world,'rotor');
 s=tf('s');
 gs=60/(s^2+10*s+600);
%  step(gs);
 y=step(gs);
 x=1:length(y);
 h=plot(x,y);
 hold on;
 p=plot(x(1),y(1),'*');
length(y)
for i=1:length(y) 
    rotor.rotation=[0,1,0,10*y(i)+0.27];
   vrdrawnow; 
   set(p,'XData',x(1:i),'YData',y(1:i));
    pause(0.005);
end
hold off;
step(gs);
% rotor.rotation=[0,1,0,0.27];
%  close(world)
% pid=pidtune(gs,'PID');
%  step(gs*pid)
%  x=step(gs*pid);
% length(y);
% for i=1:length(y)
%     rotor.rotation=[0,1,0,0.05*x(i)+0.27];
%    vrdrawnow;
%     pause(0.001);
% end
% pidTuner(gs,'PID');