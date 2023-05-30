classdef ServoMotor
    %SERVOMOTOR models a servo motor
    %{
    @properties
    
    %}
    
    properties
       stator 
       rotor
       torque
    end
    
    methods
        function this= ServoMotor(stator,rotor,torque)
            %SERVOMOTOR Construct an instance of this class
            this.stator=stator;
            this.rotor=rotor;
            this.torque=torque;
        end
        function result=getTransferFunction(this)
            s=tf('s');
            %retrive data from the objects
            Kt=this.torque;
            K=Kt;
            %from the stator
            N=this.stator.numberOfTurns;
            R=this.stator.internalResistance;
            A=this.stator.crossArea;
            %from the rotor
            J=this.rotor.inertialLoad;
            B=this.rotor.fluxDensity;
            %calculate the natural frequency 
            wn=sqrt((Kt*N*B*A)/J);
            %calculate the damping coefficient
            eps=(R/2*J)*(1/wn);
            %form the result
            result=(K)/(s^2+2*eps*wn*s+wn^2);
        end
    end
end

