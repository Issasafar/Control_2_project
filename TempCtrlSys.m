classdef TempCtrlSys
    properties
        transferFun
    end
    methods 
        function this=TempCtrlSys(matter,reactor)
            m=matter.mass;
            cp=matter.cp;
            a=reactor.heatCoefficent;
            u=reactor.surfaceArea;
            s=tf('s');
            Tdamp=(m*cp)/(u*a);
            this.transferFun=1/(Tdamp*s+1);
        end
    end
end