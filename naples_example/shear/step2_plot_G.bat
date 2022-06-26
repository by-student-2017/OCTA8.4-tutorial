
"C:\Windows\System32\wsl.exe" awk '{if(NR^>101){printf("%%e \n",$3/$2)}}' measure.npls > g12

C:\OCTA8.4\ENGINES\bin\win64\corr.exe -s 0 g12 > g12corr

C:\OCTA8.4\ENGINES\bin\win64\smooth.exe -s 2 g12corr > g12tsm

gnuplot < plot_G.gpl