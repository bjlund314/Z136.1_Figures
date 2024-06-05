# Fig10d_MPE.plt
# MPE for visible and near IR laser for sources subtending 25 mrad
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
set style line 5 linetype 5 linewidth 2 linecolor rgb "black"

set mytics 5
set mxtics 5
set xtics 0.1, 10.0
set ytics 1.0e-5, 10.0
set grid xtics ytics
set grid mxtics mytics
set grid linestyle 3, linestyle 4

set xlabel 'Exposure Durations (s)'
set ylabel 'Irradiance (W/cm^2)'

set format x '10^{%L}'
set format y '10^{%L}'

set label 1 '400 - 450 nm' at first 3000.0, first 1.6e-4 center front
set label 2 '475 nm' at first 3000.0, first 5.2e-4 center front
set label 3 '500 nm' at first 3000.0, first 1.6e-3 center front
set label 4 '532 nm' at first 3000.0, first 7.0e-3 center front
set label 5 '400 - 700 nm' at first 3000.0, first 2.2e-2 center front
set label 6 '850 nm' at first 3000.0, first 5.0e-2 center front
set label 7 '1064 nm' at first 0.6, first 0.3 center front
set label 8 '1315 nm' at first 20.0, first 0.4 center front
set label 9 '1400 nm' at first 0.23, first 1.0 center front

# MPE Data Blocks
# Data in two coluns:  t(s);  MPE (W cm^-2)

$MPE400_450_PHOTO << EOD
1.9e+00   2.546e-02
5.2e+02   9.503e-05
3.0e+04   9.503e-05
EOD

$MPE475_PHOTO << EOD
8.9e+00   1.734e-02
5.2e+02   3.005e-04
3.0e+04   3.005e-04
EOD

$MPE500_PHOTO << EOD
3.3e+01   1.471e-02
5.2e+02   9.503e-04
3.0e+04   9.503e-04
EOD

$MPE532_PHOTO << EOD
1.5e+02   1.471e-02
5.2e+02   4.148e-03
3.0e+04   4.148e-03
EOD

$MPE400_700_THERMO << EOD
1.0e-01   5.335e-02
1.7e+01   1.471e-02
3.0e+04   1.471e-02
EOD

$MPE850 << EOD
1.0e-01   1.064e-01
2.5e-01   8.465e-02
1.7e+01   2.934e-02
3.0e+04   2.934e-02
EOD

$MPE1064 << EOD
1.0e-01   2.667e-01
2.5e-01   2.121e-01
1.7e+01   7.353e-02
3.0e+04   7.353e-02
EOD

$MPE1315 << EOD
1.000e-01  2.339e+01
1.446e-01  1.638e+01
2.091e-01  1.149e+01
3.024e-01  8.065e+00
4.373e-01  5.669e+00
6.325e-01  3.990e+00
9.146e-01  2.812e+00
1.323e+00  1.984e+00
1.913e+00  1.402e+00
2.766e+00  9.928e-01
4.000e+00  7.060e-01
1.000e+01  2.824e-01
1.249e+01  2.824e-01
3.000e+04  2.824e-01
EOD

$MPE1400 << EOD
1.0e-01   5.149e+00
2.5e-01   2.384e+00
4.0e-01   1.613e+00
6.0e-01   1.155e+00
8.0e-01   9.120e-01
1.0e+00   7.600e-01
2.0e+00   4.330e-01
3.0e+00   3.123e-01
4.0e+00   2.500e-01
5.0e+00   2.000e-01
6.0e+00   1.667e-01
7.0e+00   1.429e-01
8.0e+00   1.250e-01
9.0e+00   1.111e-01
1.0e+01   1.000e-01
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

plot $MPE400_450_PHOTO  notitle with lines linestyle 1, \
     $MPE475_PHOTO      notitle with lines linestyle 1, \
     $MPE500_PHOTO      notitle with lines linestyle 1, \
     $MPE532_PHOTO      notitle with lines linestyle 1, \
     $MPE400_700_THERMO notitle with lines linestyle 1, \
     $MPE850            notitle with lines linestyle 1, \
     $MPE1064           notitle with lines linestyle 1, \
     $MPE1315           notitle with lines linestyle 1, \
     $MPE1400           notitle with lines linestyle 1

unset label 1
unset label 2
unset label 3
unset label 4
unset label 5
unset label 6
unset label 7
unset label 8
unset label 9

