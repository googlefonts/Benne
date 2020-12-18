
TTF="TTF/Benne-Regular.ttf"
rm $TTF

fontmake -u Sources/Benne_Source.ufo --output-path $TTF

# Post processing
gftools fix-nonhinting $TTF $TTF.fix
mv $TTF.fix $TTF
rm $(dirname "$TTF")/*backup*.ttf
gftools fix-dsig $TTF -a -f
