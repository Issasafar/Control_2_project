classdef Stator
    %STATOR models the stator part of the servo motor
    %{
    @properties
    numberOfTurns is the number of turns of the coil in the stator part
    internalResistance is the ohm resistance of coil wires
    crossArea is the cross sectional area of the stator coil
    %}
    
    properties
       numberOfTurns
       internalResistance
       crossArea
    end
    
    methods
        function this = Stator(N,R,A)
            %STATOR Construct an instance of this class
            %N turns, A area, R resistance 
           this.numberOfTurns=N;
           this.crossArea=A;
           this.internalResistance=R;
        end
    end
end

