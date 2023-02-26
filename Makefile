DSRCS	=	../.vim \
		../.config/kitty \
		../.wallpapers \
FSRCS	=	../.vimrc 

updt:
	@cp -r $(DSRCS) ./
	@cp $(FSRCS) ./
pull:
	@find . -type d -not -path "." -exec cp -r "{}" ../ \;
	@cp -r kitty ../.config/
	@find . -type f -not -path "." -exec cp "{}" ../ \;
add:
	@git add .
commit:
	@git commit -m "subiendo configs"

