
"C:\Windows\System32\wsl.exe" awk '{if(NR^>101){printf("%%e %%e \n",$1,$3)}}' measure.npls > ts12

C:\OCTA8.4\ENGINES\bin\win64\smooth.exe -s 20 ts12 > ts12sm

gnuplot < plot_shear.gpl