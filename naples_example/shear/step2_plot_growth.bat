
"C:\Windows\System32\wsl.exe" awk '{if(NR^>101){printf("%%e \n",$3/$2)}}' measure.npls > g12t

C:\OCTA8.4\ENGINES\bin\win64\gt2et.exe < g12t > g12e

C:\OCTA8.4\ENGINES\bin\win64\smooth.exe g12e > g12esm

gnuplot < plot_growth.gpl