
"C:\Windows\System32\wsl.exe" awk '{if(NR^>101){printf("%%e %%e \n",$1,$4-$5)}}' measure.npls > se

C:\OCTA8.4\ENGINES\bin\win64\smooth.exe -s 20 se > sem

gnuplot < plot_elongational.gpl