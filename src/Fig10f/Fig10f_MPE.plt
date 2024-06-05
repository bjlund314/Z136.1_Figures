# Fig11_MPE.plt
# MPE for visible and near IR laser for sources subtending alpha_max(t) mrad
# for exposure durations from 0.1 s to 3.0e+4 sec
# MPE expressed as radiance (W/cm^2/sr)
# For ANSI Z136.1, make plot 5in x 3.25 in
#
# Author: Brian J. Lund

set xrange [0.1:1.0e+5]
set yrange [1.0e-3:1.0e+4]
set logscale xy

set style line 1 linetype 1 linewidth 2 linecolor rgb "black"
set style line 2 linetype 2 linewidth 2 linecolor rgb "black" dashtype 4
set style line 3 linetype 1 linewidth 2 linecolor rgb "dark-gray"
set style line 4 linetype 1 linewidth 1 linecolor rgb "dark-gray"
set style line 5 linetype 5 linewidth 2 linecolor rgb "black"

set mytics 10 
set mxtics 10
set xtics 0.1, 10.0
set ytics 1.0e-3, 10.0
set grid xtics ytics
set grid mxtics mytics
set grid linestyle 3, linestyle 4

set xlabel 'Exposure Duration (s)'
set ylabel 'Radiance (W/cm^2/sr)'

set format x '10^{%L}'
set format y '10^{%L}'

set label 1 '400 - 450 nm' at first 3.0e+4, first 1.4e-2 center front
set label 2 '475 nm' at first 3.0e+4, first 5.2e-2 center front
set label 3 '500 nm' at first 3.0e+4, first 1.4e-1 center front
set label 4 '532 nm' at first 3.0e+4, first 6.4e-1 center front
set label 5 '550 nm' at first 3.0e+4, first 1.6 center front
set label 6 '600 - 700 nm' at first 3.0e+4, first 3.8 center front
set label 7 '850 nm' at first 0.3, first 8.0 center front
set arrow 7 from first 0.3, first 10.0 to first 0.4, first 33.0 linestyle 1
set label 8 '1064 nm' at first 3.0e+4, first 40.0 center front
set label 9 '1315 nm' at first 2.0, first 600 center front
set label 10 '1400 nm' at first 0.3, first 4.5e+3 center front
set arrow 10 from first 0.3, first 3.0e+3 to first 0.2, first 440.0 \
    linestyle 1

# MPE Data Blocks
# Data in two columns:  t (s);  MPE (W cm^-2 sr^-1)

$MPE400_450_PHOTO << EOD
1.224273e+01    8.168115e+00
1.000000e+04    1.000000e-02
3.000000e+04    1.000000e-02
EOD

$MPE475_PHOTO << EOD
5.682571e+01    5.564872e+00
1.000000e+04    3.162278e-02
3.000000e+04    3.162278e-02
EOD

$MPE500_PHOTO << EOD
2.069706e+02    4.831604e+00
1.000000e+04    1.000000e-01
3.000000e+04    1.000000e-01
EOD

$MPE532_PHOTO << EOD
9.034594e+02    4.831604e+00
1.000000e+04    4.365158e-01
3.000000e+04    4.365158e-01
EOD

$MPE550_PHOTO << EOD
2.069706e+03    4.831604e+00
1.000000e+04    1.000000e+00
3.000000e+04    1.000000e+00
EOD

$MPE400_700_THERMO << EOD
1.000000e-01    4.295971e+01
2.500000e-01    2.160759e+01
1.000000e+02    4.831604e+00
3.000000e+04    4.831604e+00
EOD

$MPE850 << EOD
1.000000e-01    8.571590e+01
2.500000e-01    4.311281e+01
1.000000e+02    9.640318e+00
3.000000e+04    9.640318e+00
EOD

$MPE1064 << EOD
1.000000e-01    2.147986e+02
2.500000e-01    1.080380e+02
1.000000e+02    2.415802e+01
3.000000e+04    2.415802e+01
EOD

$MPE1315 << EOD
1.000e-01  2.461e+03
1.446e-01  1.724e+03
2.091e-01  1.209e+03
3.024e-01  8.487e+02
4.373e-01  5.965e+02
6.325e-01  4.198e+02
9.146e-01  2.959e+02
1.323e+00  2.088e+02
1.913e+00  1.476e+02
2.766e+00  1.045e+02
4.000e+00  7.429e+01
1.000e+01  2.971e+01
1.263e+02  2.971e+01
3.000e+04  2.971e+01
EOD

$MPE1400 << EOD
1.000000e-01    1.639013e+03
1.500000e-01    7.759779e+02
2.000000e-01    4.571683e+02
2.500000e-01    3.035300e+02
3.000000e-01    2.607791e+02
4.000000e-01    2.054218e+02
6.000000e-01    1.470300e+02
8.000000e-01    1.161219e+02
1.000000e+00    9.676621e+01
2.000000e+00    5.512847e+01
3.000000e+00    3.976758e+01
4.000000e+00    3.183099e+01
5.000000e+00    2.546479e+01
6.000000e+00    2.122066e+01
7.000000e+00    1.818914e+01
8.000000e+00    1.591549e+01
9.000000e+00    1.414711e+01
1.000000e+01    1.273240e+01
2.000000e+01    1.273240e+01
3.000000e+01    1.273240e+01
4.000000e+01    1.273240e+01
5.000000e+01    1.273240e+01
6.000000e+01    1.273240e+01
7.000000e+01    1.273240e+01
8.000000e+01    1.273240e+01
9.000000e+01    1.273240e+01
1.000000e+02    1.273240e+01
2.000000e+02    1.273240e+01
3.000000e+02    1.273240e+01
4.000000e+02    1.273240e+01
5.000000e+02    1.273240e+01
6.000000e+02    1.273240e+01
7.000000e+02    1.273240e+01
8.000000e+02    1.273240e+01
9.000000e+02    1.273240e+01
1.000000e+03    1.273240e+01
2.000000e+03    1.273240e+01
3.000000e+03    1.273240e+01
4.000000e+03    1.273240e+01
5.000000e+03    1.273240e+01
6.000000e+03    1.273240e+01
7.000000e+03    1.273240e+01
8.000000e+03    1.273240e+01
9.000000e+03    1.273240e+01
1.000000e+04    1.273240e+01
2.000000e+04    1.273240e+01
3.000000e+04    1.273240e+01
EOD

plot $MPE400_450_PHOTO  notitle with lines linestyle 1, \
     $MPE475_PHOTO      notitle with lines linestyle 1, \
     $MPE500_PHOTO      notitle with lines linestyle 1, \
     $MPE532_PHOTO      notitle with lines linestyle 1, \
     $MPE550_PHOTO      notitle with lines linestyle 1, \
     $MPE400_700_THERMO notitle with lines linestyle 1, \
     $MPE850            notitle with lines linestyle 2, \
     $MPE1064           notitle with lines linestyle 1, \
     $MPE1315           notitle with lines linestyle 2, \
     $MPE1400           notitle with lines linestyle 1

