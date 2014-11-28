## set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 500, 350 
## set output 'pm3d.18.png'
#set border 4095 front linetype -1 linewidth 1.000
#set style line 100  linetype 5 linecolor rgb "#f0e442"  linewidth 0.500 pointtype 5 pointsize default pointinterval 0
#set view 50, 220, 1, 1
#set samples 30, 30
#set isosamples 30, 30
#unset surface
#set title "set pm3d hidden3d <linetype>: pm3d's much faster hidden3d variant" 
#set xrange [ -2.00000 : 2.00000 ] noreverse nowriteback
#set yrange [ -2.00000 : 2.00000 ] noreverse nowriteback
#set pm3d implicit at s
#set pm3d interpolate 1,1 flush begin noftriangles hidden3d 100 corners2color mean
#splot log(x*x*y*y)



set size ratio -1
splot 'berry.png' binary filetype=png using  with image
#splot 'blutux.rgb' binary array=(128,128) flipy format='%uchar%uchar%uchar' using ($1+$2+$3)/3 with image
