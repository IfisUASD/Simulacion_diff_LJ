import linecache
#from MSD2 import filtxyz
# Este primer programa crea todos los archivos steps separados de la particula la cual 
# se va a calcular el MSD

# step final, n es el numero de moleculas para MSD
# nt numero de moleculas totales 
def MSD(stepF,n,step,a_xyz):
 
    i = 0
    while i*step < stepF:
        #line_numbers = range((nt - n + 3) + (nt+2)*i,(nt + 3) + (nt+2)*i)
        line_numbers = range(3 + (n+2)*i, (n + 3) + (n+2)*i)
        #lines = []
        
        new = open("Timestep{}".format(i*step), "a")

        for k in line_numbers:
            x = linecache.getline(r"{}".format(a_xyz), k)
            #print(x)           
            #lines.append(x)
            new.writelines(x)
        
        new.close()
        
        #lines.clear()
        #print("Timestep:",i*step)
        i += 1
        #print(line_numbers)
        #print(i)
        

#nt = 1000000 #particulas totales 
# a_xyz = archivo xyz
#n = 100000 #particulas del rango 
#step = 1000  # Periodo de 100, se actualiza cada 100
#stepF = 10000 # Step final 
#MSD(stepF + 2*step,n,nt,step,"posicion9_1.xyz")    




