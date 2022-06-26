
"C:\Windows\System32\wsl.exe" awk '{if(NR^>101){printf("%%e \n",$3/$2)}}' measure.npls > g12t

C:\OCTA8.4\ENGINES\bin\win64\gt2gw.exe < g12t > g12w

C:\OCTA8.4\ENGINES\bin\win64\gwsmooth.exe g12w > g12wsm

gnuplot < plot_gw.gpl