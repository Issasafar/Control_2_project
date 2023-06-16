function  result= simulateWorld(optionsArr)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

world=vrworld('vrservo.x3d');
open(world);
if(optionsArr(1)~=0)
 
vrdrawnow;
servoSystem=ServoMotor.getSampleFunction;
if(optionsArr(2)==1)
    pid1=pidtune(servoSystem,'PID');
    gs=feedback(servoSystem*pid1,1);
else
gs=servoSystem;
end
pointer=vrnode(world,'Pointer');
 rotor=vrnode(world,'rotor1');
 circle_color=vrnode(world,'red_circle_material');
 stepGain=optionsArr(1)
 opt = stepDataOptions('InputOffset',0,'StepAmplitude',stepGain);
 
 [amplitude,time]=step(gs,opt);
 

    
    pointer.rotation=[0,0,1,deg2rad(25)*amplitude(length(time))];

for i=1:length(time) 
    rotor.rotation=[0,0,1,deg2rad(25)*amplitude(i)];
    if(isequal(rotor.rotation,pointer.rotation))
        circle_color.diffuseColor=[0 1 0];
    else
        circle_color.diffuseColor=[1 0 0];   
    end
   vrdrawnow; 
   
    pause(0.01);
end

end

result=1;
end

