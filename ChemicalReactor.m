classdef ChemicalReactor
properties
   %surface area of the reactor
   surfaceArea
   %heat transfer coefficent
   heatCoefficent
   s=tf('s')
end
methods
    function this=ChemicalReactor(area,coeff)
        this.surfaceArea=area;
        this.heatCoefficent=coeff;
    end
end
end