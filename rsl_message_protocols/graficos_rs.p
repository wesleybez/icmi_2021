set grid
set terminal pngcairo size 700,524 enhanced font 'Verdana,10'
set style fill solid border

set grid ytics lc rgb "#bbbbbb" lw 1 lt 0
set grid xtics lc rgb "#bbbbbb" lw 1 lt 0

set nokey
#set key at graph 0.24, 0.85 horizontal samplen 0.1
#set style data histogram
#set style histogram cluster gap 1
#set style fill solid border -1

#unset ytics
#set y2tics rotate by 90
#set xtics offset -50,100

set boxwidth 0.65
set datafile separator ","

#ano por publicacao
set yrange [0:6]
set xtic rotate by 0 scale 0
set ylabel "y - Publication"
set xlabel "x - Year"
set output 'graficos/ano_pubs.png'
set title "Publication per year"
plot "datasets/acompanhamento_ano_quantidade.csv" using 2:xtic(1) with boxes

#maior h-index
set yrange [0:70]
set xtic rotate by 0 scale 0
set ylabel "y - H-index"
set xlabel "x - Author"
set output 'graficos/maior_hindex.png'
set title "Major h-index in Publication"
plot "datasets/acompanhamento_maior_h_index.csv" using 4:xtic(1) with boxes

#maior i10
set yrange [0:250]
set xtic rotate by 0 scale 0
set ylabel "y - i10"
set xlabel "x - Author"
set output 'graficos/maior_i10.png'
set title "Major h-index in Publication"
plot "datasets/acompanhamento_maior_i10.csv" using 4:xtic(1) with boxes


#publicacoes por veiculo
set yrange [0:2.5]
set xtic rotate by 0 scale 0
set ylabel "y - Amount"
set xlabel "x - Conference/Journal"
set output 'graficos/veiculo_quantidade.png'
set title "Publications per Conference/Journal"
plot "datasets/acompanhamento_veiculo_quantidade.csv" using 3:xtic(1) with boxes

#fator de impacto por veiculo
set yrange [0:7]
set xtic rotate by 315 scale 0
set ylabel "y - Impact Factor"
set xlabel "x - Conference/Journal"
set output 'graficos/veiculo_fi.png'
set title "Impact Factor per Conference/Journal"
plot "datasets/acompanhamento_veiculos_fi.csv" using 3:xtic(1) with boxes


#citacoes por artigo
set yrange [0:80]
#set xtic rotate by 315 scale 0
set ylabel "y - Citation"
set xlabel "x - Publication"
set output 'graficos/artigo_citacao.png'
set title "Citation per publication"
plot "datasets/acompanhamento_artigo_citacoes.csv" using 3:xtic(1) with boxes
