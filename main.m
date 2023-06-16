function main
servoSystem=ServoMotor.getSampleFunction;
servoSystemPid=pidtune(servoSystem,'PID');
 mainApp
end