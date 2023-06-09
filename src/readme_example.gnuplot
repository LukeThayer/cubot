
set encoding utf8
set termoption dashed
set termoption enhanced
set multiplot
set origin
set size
set size noratio
set lmargin
set rmargin
set tmargin
set bmargin
set palette rgbformulae 7,5,15
unset xzeroaxis 
unset logscale x
set xdata
set mxtics 1

set xrange [*:*]
set xtics autofreq scale 5.000000000000e-1,5.000000000000e-1
set xlabel "x"

unset yzeroaxis 
unset logscale y
set ydata
set mytics 1

set yrange [*:*]
set ytics autofreq scale 5.000000000000e-1,5.000000000000e-1
set ylabel "y^2"

unset x2zeroaxis 
unset logscale x2
set x2data
unset mx2tics

set x2range [*:*]
unset x2tics
set x2label ""

unset y2zeroaxis 
unset logscale y2
set y2data
unset my2tics

set y2range [*:*]
unset y2tics
set y2label ""


unset logscale cb
set cbdata
set mcbtics 1

set cbrange [*:*]
set cbtics autofreq scale 5.000000000000e-1,5.000000000000e-1
set cblabel ""

set title "A plot"
set border 15 front  lc rgb "black" lw 1
set key at  graph 5.0000000000000000e-1, graph 9.0000000000000002e-1 right top vertical noreverse noinvert
plot "-" binary endian=little record=7 format="%float64" using 1:2 with lines lw 1 t "Parabola"
      �      "@       �      @      �      �?                      �?      �?       @      @      @      "@unset multiplot

