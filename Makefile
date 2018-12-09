# Generate .tex from FOL files in KIF format
spec/%-auto.tex: %.kif 
	blip -i $< -f obolog_simple io-convert -u obolog_writer_latex -to "obolog_latex_section" > $@.tmp && mv $@.tmp $@

%.tex: %.kif 
	blip -i $< -f obolog_simple io-convert -u obolog_writer_latex -to "obolog_latex_section" > $@.tmp && mv $@.tmp $@

%-lp.tex: %.kif 
	blip -i $< -f obolog_simple io-convert -u obolog_writer_latex -to "obolog_latex_lp" > $@.tmp && mv $@.tmp $@

# See the 
spec/%.pdf: spec/%.tex spec/obolog-auto.tex owl/obolog-owl-dl-lp.tex owl/obolog-rdfs-lp.tex  owl/obolog-owl-simple-lp.tex
	cd spec && latex $*.tex && pdflatex $*.tex

html:
	cd spec && export RGBDEF=`pwd`/rgd.txt && latex2html -split 1

%-m.pro: %.kif
	blip -i $< -f obolog_simple io-convert -to obolog_prolog > $@.tmp && mv $@.tmp $@

obolog.html: obolog.kif 
	blip-serval -i $< -f obolog -u amigo_obolog serval-wget -func "relation_page('obolog')" > $@.tmp && mv $@.tmp $@

publish:
	rsync -avz * cjm@sos.lbl.gov:public_html/obolog
