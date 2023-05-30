clc
clear
rotor1=Rotor(1,0.5);
stator1=Stator(3500,100,1);
motor1=ServoMotor(stator1,rotor1,10);
gs=motor1.getTransferFunction
step(gs)
stepinfo(gs)

