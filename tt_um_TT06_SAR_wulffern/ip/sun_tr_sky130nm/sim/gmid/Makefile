
TB=gmid
#VIEW=Sch
VIEW=Sch
#VIEW=Ver

OPT=

CORNER=tfs

typical:
	cicsim run --name typical ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt

slow:
	cicsim run --name slow ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast:
	cicsim run --name fast ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs:
	cicsim run --name tfs ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff"  "Tt,Th,Tl" Vt

ttffss:
	cicsim run --name ttffss ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp:
	cicsim run --name temp ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

tfsp:
	python3 plot_idgm.py ${TB}_${VIEW}GtAttAssAffTtThTlVt.run ${OPT}

test:
	${MAKE} tfs tfsp

summary:
	cicsim summary --output "README.md"
	pandoc -s README.md -o README.html

clean:
	${foreach f,${TBS}, rm ${f}.spi ${f}.meas ${f}.yaml;}
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
