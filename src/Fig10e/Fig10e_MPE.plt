# Fig10e_MPE.plt
# MPE for visible and near IR laser for sources subtending 50 mrad
# For ANSI Z136.1, make plot 5in x 3.25 in
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

set mytics 10 
set mxtics 10
set xtics 0.1, 10.0
set ytics 1.0e-5, 10.0
set grid xtics ytics
set grid mxtics mytics
set grid linestyle 3, linestyle 4

set xlabel 'Exposure Duration (s)'
set ylabel 'Irradiance (W/cm^2)'

set format x '10^{%L}'
set format y ' 10^{%L}'

set label 1 '400 - 450 nm' at first 1.0e+4, first 1.4e-4 center front
set label 2 '475 nm' at first 1.0e+4, first 4.8e-4 center front
set label 3 '500 nm' at first 1.0e+4, first 1.4e-3 center front
set label 4 '532 nm' at first 1.0e+4, first 6.0e-3 center front
set label 5 '550 nm' at first 1.0e+4, first 1.4e-2 center front
set label 6 '400 - 700 nm' at first 1.0e+4, first 3.8e-2 center front
set label 7 '850 nm' at first 0.2, first 0.02 left front
set arrow 7 from first 0.36, first 0.027 to first 0.53, first 0.13 \
     linestyle 1
set label 8 '1064 nm' at first 1.0e+4, first 0.2 center front
set label 9 '1315 nm' at first 4.0, first 2.0 center front
set label 10 '1400 nm' at first 0.2, first 30 left front
set arrow 10 from first 0.36, first 21.0 to first 0.2, first 3.1 linestyle 1

# MPE Data Blocks
# Data in two columns:  t (s); MPE (W cm^-2)

$MPE400_450_PHOTO << EOD
4.9e+00   4.041e-02
2.1e+03   9.503e-05
3.0e+04   9.503e-05
EOD

$MPE475_PHOTO << EOD
2.3e+01   2.753e-02
2.1e+03   3.005e-04
3.0e+04   3.005e-04
EOD

$MPE500_PHOTO << EOD
7.7e+01   2.541e-02
2.1e+03   9.503e-04
3.0e+04   9.503e-04
EOD

$MPE532_PHOTO << EOD
3.4e+02   2.541e-02
2.1e+03   4.148e-03
3.0e+04   4.148e-03
EOD

$MPE550_PHOTO << EOD
7.7e+02   2.541e-02
2.1e+03   9.503e-03
3.0e+04   9.503e-03
EOD

$MPE400_700_THERMO << EOD
1.0e-01   1.067e-01
2.5e-01   8.485e-02
3.1e+01   2.541e-02
3.0e+04   2.541e-02
EOD

$MPE850 << EOD
1.0e-01   2.129e-01
2.5e-01   1.693e-01
3.1e+01   5.071e-02
3.0e+04   5.071e-02
EOD

$MPE1064 << EOD
1.0e-01   5.335e-01
2.5e-01   4.243e-01
3.1e+01   1.271e-01
3.0e+04   1.271e-01
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
     $MPE550_PHOTO      notitle with lines linestyle 1, \
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
unset arrow 7
unset label 8
unset label 9
unset label 10
unset arrow 10
