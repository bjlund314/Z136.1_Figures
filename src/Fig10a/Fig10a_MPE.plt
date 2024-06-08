# Fig10a_MPE.plt
# Plot point source MPE for visible and near ir lasers
# For ANSI Z136.1, make plot 5in x 3.25in
#
# Author: Brian J. Lund

set xrange [0.1:5.0e5]
set yrange [1.0e-5:10.0]
set logscale xy

set style line 1 linetype 1 linewidth 2 linecolor rgb "black"
set style line 2 linetype 2 linewidth 2 linecolor rgb "black" dashtype 2
set style line 3 linetype 1 linewidth 2 linecolor rgb "dark-gray"
set style line 4 linetype 1 linewidth 1 linecolor rgb "dark-gray"

set mytics 10
set mxtics 10
set xtics 0.1, 10.0
set ytics 1.0e-5, 10.0
set grid xtics ytics
set grid mxtics mytics
set grid linestyle 3, linestyle 4

set xlabel 'Exposure Duration (s)'
set ylabel 'Irradiance (W/cm^2)'

#set format x '{/=8 10^{%L}}'
#set format y '{/=8 10^{%L}}'
set format x '10^{%L}'
set format y '10^{%L}'

set label 1 '500 - 700 nm' at first 4.0e4, first 1.0e-3 left front
set label 2 '490 nm' at first 4.0e4, first 6.130e-4 left front
set label 3 '475 nm' at first 4.0e4, first 3.163e-4 left front
set label 4 '400 - 450 nm' at first 4.0e4, first 1.0e-4 left front
set label 5 '850 nm' at first 4.0e4, first 2.02e-3 left front
set label 6 '1064 nm' at first 4.0e4, first 5.061e-3 left front
set label 7 '1315 nm' at first 4.0e4, first 2.824e-1 left front
set label 8 '1400 nm' at first 4.0e4, first 1.0e-1 left front

# MPE data blocks

$MPE400_450 << EOD
0.1     3.201e-3
10.0    1.0e-3
100.0   1.0e-4
3.0e4   1.0e-4
EOD

$MPE475 << EOD
0.1     3.2e-3
10.0    1.0e-3
31.626  1.0e-3
100.0   3.163e-4
3.0e4   3.163e-4
EOD

$MPE490 << EOD
0.1     3.201e-3
10.0    1.0e-3
63.096  1.0e-3
100.0   6.310e-4
3.0e4   6.310e-4
EOD

$MPE500_700 << EOD
0.1     3.201e-3
10.0    1.0e-3
3.0e4   1.0e-3
EOD

$MPE850 << EOD
1.0e-01   6.387e-03
2.5e-01   5.079e-03
1.0e+01   2.020e-03
3.0e+04   2.020e-03
EOD

$MPE1064 << EOD
1.0e-01   1.600e-02
2.5e-01   1.273e-02
1.0e+01   5.061e-03
3.0e+04   5.061e-03
EOD

$MPE1315 << EOD
1.000e-01  6.500e+00
6.086e-01  4.138e+00
6.086e-01  4.138e+00
7.347e-01  3.460e+00
8.869e-01  2.895e+00
1.071e+00  2.422e+00
1.292e+00  2.028e+00
1.560e+00  1.698e+00
1.884e+00  1.423e+00
2.274e+00  1.193e+00
2.745e+00  9.999e-01
3.314e+00  8.388e-01
4.000e+00  7.060e-01
1.000e+01  2.824e-01
1.000e+01  2.824e-01
3.000e+04  2.824e-01
EOD

$MPE1400 << EOD
1.0e-01   5.149e+00
2.5e-01   2.384e+00
4.0e-01   1.613e+00
6.0e-01   1.155e+00
8.0e-01   9.120e-01
1.0e+00   7.600e-01
1.3e+00   6.138e-01
2.0e+00   4.330e-01
2.3e+00   3.868e-01
3.0e+00   3.123e-01
3.3e+00   2.893e-01
4.0e+00   2.500e-01
1.0e+01   1.000e-01
2.0e+01   1.000e-01
4.0e+01   1.000e-01
6.0e+01   1.000e-01
8.0e+01   1.000e-01
1.0e+02   1.000e-01
2.0e+02   1.000e-01
4.0e+02   1.000e-01
6.0e+02   1.000e-01
8.0e+02   1.000e-01
1.0e+03   1.000e-01
2.0e+03   1.000e-01
4.0e+03   1.000e-01
6.0e+03   1.000e-01
8.0e+03   1.000e-01
1.0e+04   1.000e-01
2.0e+04   1.000e-01
3.0e+04   1.000e-01
EOD

plot $MPE500_700 notitle with lines linestyle 1, \
     $MPE490 notitle with lines linestyle 1, \
     $MPE475 notitle with lines linestyle 1, \
     $MPE400_450 notitle with lines linestyle 1, \
     $MPE850 notitle with lines linestyle 1, \
     $MPE1064 notitle with lines linestyle 1, \
     $MPE1315 notitle with lines linestyle 1, \
     $MPE1400 notitle with lines linestyle 1

unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset label 6
unset label 7
unset label 8
