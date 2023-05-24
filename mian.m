ammonia=ChemicalMatter(1500,10)
reactor=ChemicalReactor(50,0.5)
system=TempCtrlSys(ammonia,ammoniaReactor)
step(system.transferFun)