# Maxima

http://maxima.sourceforge.net/docs/tutorial/en/gaertner-tutorial-revision/Contents.htm

## Useful links
https://themaximalist.org/
https://wxmaximafor.files.wordpress.com/2015/06/wxmaxima_for_calculus_i_cq.pdf
https://wxmaximafor.files.wordpress.com/2015/06/wxmaxima_for_calculus_ii_cq.pdf

## few tips
### batch mode
maxima -b file.mac >> output.out

###
maxima --batch-string="batchload(\"filename\")$"

### time and space
showtime : true;

### multi plots
```mac
for n:1 thru 5 do
  ( lst: concat("set term x11 ", n)
  , plot2d( sin(n*x)
          , [x,-%pi,%pi]
          , [gnuplot_preamble, lst]
          )
  );
```

