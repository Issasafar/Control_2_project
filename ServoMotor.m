classdef ServoMotor
    properties
        torqueConstant %torque constant
        backEmfConstant %back EMF constant
        Resistance %inernal resistance
        inductance %inductance if the coil
        momentofInertia %moment of inertia
        friction %friction
    end 
    methods 
        function this=ServoMotor(kt,kb,ra,la,j,f)
            this.friction=f;
            this.momentofInertia=j;
            this.backEmfConstant=kb;
            this.torqueConstant=kt;
            this.inductance=la;
            this.Resistance=ra;
        end
        function result=getTransferFunction(this)
            f=this.friction;
            j=this.momentofInertia;
            kb=this.backEmfConstant;
            kt=this.torqueConstant;
            la=this.inductance;
            ra=this.Resistance;
            s=tf('s');
            result=kt/(s*((ra+la*s)*(s*j+f)+kt*kb));
        end
    end
    methods(Static)
        function result=getSampleFunction()
             motor=ServoMotor(900,0.2,50,0.05,0.4,0.05);
             gf=motor.getTransferFunction;
             result=feedback(gf,1);
        end
    end
    
end 