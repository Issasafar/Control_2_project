classdef Rotor
    %ROTOR models the rotor part of the servo motor
    %{
    @properties
    inertialLoad is the inertial load at the rotor (kg.m^2)
    fluxDensity is the magnetic flux density at the surface of rotor
    %}
    
    properties
        inertialLoad
        fluxDensity
    end
    
    methods
        %ROTOR construct instace of this class
        %J inertial load, B magnetic flux
        function this = Rotor(J,B)
          this.inertialLoad=J;
          this.fluxDensity=B;
        end
        
    end
end

