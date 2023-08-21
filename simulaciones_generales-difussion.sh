#!/bin/bash
export  OMP_NUM_THREADS=8
rm Timestep*
mpirun -np 8 lammps -in 90-10.in
python3 -c 'print("Coeficiente de Difusion, concentracion: 9/1")' >> CoefD.txt 
python3 -c'import MSD1; MSD1.MSD(1401000,100000,1000,"posicion9-out_1.xyz")'
python3 -c'import MSD2; MSD2.MSDD("x",100000,1401000,1000)' >> CoefD.txt 
rm Timestep*
mpirun -np 8 lammps -in 80-20.in
python3 -c 'print("Coeficiente de Difusion concentracion: 8/2")' >> CoefD.txt 
python3 -c'import MSD1; MSD1.MSD(1401000,200000,1000,"posicion8-out_1.xyz")'
python3 -c'import MSD2; MSD2.MSDD("x",200000,1401000,1000)' >> CoefD.txt 
rm Timestep*
mpirun -np 8 lammps -in 70-30.in
python3 -c 'print("Coeficiente de Difusion concentracion: 7/3:")' >> CoefD.txt 
python3 -c'import MSD1; MSD1.MSD(1401000,300000,1000,"posicion7-out_1.xyz")'
python3 -c'import MSD2; MSD2.MSDD("x",300000,1401000,1000)' >> CoefD.txt 
rm Timestep*
mpirun -np 8 lammps -in 60-40.in 
python3 -c 'print("Coeficiente de Difusion concentracion: 6/4:")' >> CoefD.txt 
python3 -c'import MSD1; MSD1.MSD(1401000,400000,1000,"posicion6-out_1.xyz")'
python3 -c'import MSD2; MSD2.MSDD("x",400000,1401000,1000)' >> CoefD.txt 
rm Timestep*

