# plotar graficos 2D

# GRAFICO da Pressão  
set output "tmpPressao.eps"
set xlabel  "X^*"
set ylabel  "Y^*"
set zlabel  "Pressao^*"
set grid
splot "echoPressao.dat" index 'TEMPO    1' using 3:4:5 with pm3d  title ' ', \
      "echoPressao.dat" index 'TEMPO    2' using 3:4:5 with pm3d  title ' ', \
      "echoPressao.dat" index 'TEMPO    3' using 3:4:5 with pm3d  title ' '
#splot "echoPressao.dat" index 'TEMPO 8.64000000E+04' using 3:4:5 with pm3d  title ' '
#splot "echoPressao.dat" index 'TEMPO 8.64000000E+05' using 3:4:5 with pm3d title ' '

#plot  "echoPressao.dat" index ' TEMPO 8.64000000E+04' using 2:3  title " " w lines
!epstopdf --outfile=tmpPressao.pdf tmpPressao.eps  