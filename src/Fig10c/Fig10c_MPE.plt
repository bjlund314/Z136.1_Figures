# Fig10c_MPE.plt
# MPE for visible and near IR laser for sources subtending 11 mrad
# For ANSI Z136.1, make plot 5in x 3.25in
#
# Author: Brian J. Lund
#

set xrange[0.1:1.0e+5]
set yrange[1.0e-5:100.0]
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
set grid linestyle 3, linestyle 4

set xlabel 'Exposure Duration (s)'
set ylabel 'Irradiance (W/cm^2)'

set format x '10^{%L}'
set format y '10^{%L}'

set label 1 '400 - 450 nm' at first 1000.0, first 1.6e-4 center front
set label 2 '475 nm' at first 1000.0, first 4.5e-4 center front
set label 3 '500 nm' at first 1000.0, first 1.5e-3 center front
set label 4 '514.5 nm' at first 1000.0, first 3.0e-3 center front
set label 5 '850 nm' at first 1000.0, first 2.2e-2 center front
set label 6 '1064 nm' at first 1000.0, first 5.8e-2 center front
set label 7 '1315 nm' at first 14.0, first 0.6 center front
set label 8 '1400 nm' at first 1.0, first 0.36 center front
set label 9 '600 - 700 nm' at first 1000.0, first 1.0e-2 center front

# MPE Data Blocks
# Data in two columns:  t (s);  MPE (W cm^-2)

$MPE400_450_PHOTO << EOD
7.0e-01   1.420e-02
1.0e+02   1.000e-04
3.0e+04   1.000e-04
EOD

$MPE475_PHOTO << EOD
3.2e+00   9.865e-03
1.0e+02   3.162e-04
3.0e+04   3.162e-04
EOD

$MPE500_PHOTO << EOD
1.4e+01   7.022e-03
1.0e+02   1.000e-03
3.0e+04   1.000e-03
EOD

$MPE5145_PHOTO << EOD
2.8e+01   7.022e-03
1.0e+02   1.950e-03
3.0e+04   1.950e-03
EOD

$MPE400_700_THERM << EOD
1.0e-01   2.347e-02
2.5e-01   1.867e-02
1.2e+01   7.022e-03
3.0e+04   7.022e-03
EOD

$MPE850 << EOD
1.0e-01   4.684e-02
2.5e-01   3.725e-02
1.2e+01   1.401e-02
3.0e+04   1.401e-02
EOD

$MPE1064 << EOD
1.0e-01   1.174e-01
2.5e-01   9.334e-02
1.2e+01   3.511e-02
3.0e+04   3.511e-02
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

#plot 'Fig10c_therm.dat' notitle with lines linestyle 1, \
#     'Fig10c_photo.dat' notitle with lines linestyle 1

plot $MPE400_450_PHOTO notitle with lines linestyle 1, \
     $MPE475_PHOTO notitle with lines linestyle 1, \
     $MPE500_PHOTO notitle with lines linestyle 1, \
     $MPE5145_PHOTO notitle with lines linestyle 1, \
     $MPE400_700_THERM notitle with lines linestyle 1, \
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
unset label 9

