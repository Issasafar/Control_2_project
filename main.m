function main
servoSystem=ServoMotor.getSampleFunction;
servoSystemPid=pidtune(servoSystem,'PID');
world=vrworld('vrservo.x3d');
 mainApp
end