classdef ChemicalMatter
    properties
        %mass of the matter
        mass
        %heat capacitance of the matter 
        cp
    end
    methods
        function this=ChemicalMatter(m,c)
            this.mass=m;
            this.cp=c;
        end
    end
        
end
