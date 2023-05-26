clc
clear
rotor1=Rotor(0.4,0.1);
stator1=Stator(2000,200,1.5);
motor1=ServoMotor(stator1,rotor1,10);
gs=motor1.getTransferFunction;
step(gs)

