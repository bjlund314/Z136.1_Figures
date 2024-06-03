# Fig10b_MPE.plt
# Plot MPE for visible and near IR lasers for sources subtending 3 mrad
# For ANSI Z136.1, make plot 5in x 3.25in
#
# Author: Brian J. Lund

set xrange [0.1:1.0e+5]
set yrange [1.0e-5:100.0]
set logscale xy

set style line 1 linetype 1 linewidth 2 linecolor rgb "black"
set style line 2 linetype 2 linewidth 2 linecolor rgb "black" dashtype 2
set style line 3 linetype 1 linewidth 2 linecolor rgb "dark-gray"
set style line 4 linetype 1 linewidth 1 linecolor rgb "dark-gray"

set mytics 5
set mxtics 5
set xtics 0.1, 10.0
set ytics 1.0e-5, 10.0
set grid xtics ytics
set grid mxtics mytics
set grid linestyle 4, linestyle 4

set xlabel 'Exposure Duration (s)'
set ylabel 'Irradiance (W/cm^2)'

set format x '10^{%L}'
set format y '10^{%L}'

set label 1 '400 - 450 nm' at first 1000.0, first 1.6e-4 center front
set label 2 '475 nm' at first 1000.0, first 5.8e-4 center front
set label 3 '500 nm' at first 1000.0, first 1.5e-3 center front
set label 4 '600 - 700 nm' at first 1000.0, first 3.0e-3 center front
set label 5 '850 nm' at first 1000.0, first 6.0e-3 center front
set label 6 '1064 nm' at first 1000.0, first 1.6e-2 center front
set label 7 '1315 nm' at first 14.0, first 0.6 center front
set label 8 '1400 nm' at first 0.9, first 0.4 center front

plot 'Fig10b_therm.dat' notitle with lines linestyle 1, \
     'Fig10b_photo.dat' notitle with lines linestyle 1

unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset label 6
unset label 7
unset label 8
