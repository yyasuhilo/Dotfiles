set term pos eps enh color solid lw 2 'Helvetica,40'
#----------------  line style -------------------------
set style line 1 lt 1 lw 3 pt  7 ps 2  
set style line 2 lt 2 lw 3 pt 73 ps 2  
set style line 3 lt 4 lw 3 pt  9 ps 2 
set style line 4 lt 5 lw 3 pt 70 ps 2  
set style line 5 lt 3 lw 3 pt 13 ps 2  
set style line 6 lt 7 lw 3 pt 71 ps 2    

set tmargin 0
set bmargin 0
set rmargin 0
set lmargin 0
set xtic font "Helvetica"
set ytic font "Helvatica"
set mxtic 2
set mytic 2

set output 'output.eps'
set multiplot
set origin 0.2,0.2
set size 0.75,0.75
set key spacing 1.2
set key samplen 3
set style data lp
set yrange [-0.2: 1]
set xlabel '{/Helvetica-Italic xaxis}' offset 0, 0.5
set ylabel '{/Helvetica-Italic yaxis}' offset 2, 0
set label '{/Symbol-Oblique Symbol} / {/Helvetica-Oblique Italic} x {/ZapfChancery-MediumItalic CAL} = 2.44 {/Symbol m}V' at screen 0.3, screen 0.5
set label '{/Symbol=40 ~{/Helvetica-Oblique h}{0.4-}}' at screen 0.3, screen 0.4


#plot 'datafile.txt' u 1:2 w l lt 1 lw 3 pt 2 ps 2 t 'title'
plot pi*x*x
unset multiplot

