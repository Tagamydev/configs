OSRCS	= .vim \
		  .wallpapers \

DSRCS	=	../.vim \
		../.config/kitty \
		../.wallpapers \
FSRCS	=	../.vimrc 

updt:
	@cp -r $(DSRCS) ./
	@cp $(FSRCS) ./
pull:
	@cp -r $(OSRCS) ../
	@cp -r kitty ../.config/
add:
	@git add .
commit:
	@git commit -m "subiendo configs"

