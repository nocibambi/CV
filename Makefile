CV = Andras_Novoszath_CV
EXTENDED = Andras_Novoszath_CV_extended

PANDOC_OPTS = --pdf-engine=wkhtmltopdf \
	--pdf-engine-opt=--margin-top --pdf-engine-opt=15 \
	--pdf-engine-opt=--margin-bottom --pdf-engine-opt=15 \
	--pdf-engine-opt=--margin-left --pdf-engine-opt=15 \
	--pdf-engine-opt=--margin-right --pdf-engine-opt=15

.PHONY: convert update

convert:
	pandoc $(CV).md -o $(CV).pdf $(PANDOC_OPTS)
	pandoc $(EXTENDED).md -o $(EXTENDED).pdf $(PANDOC_OPTS)

update: convert
	git add $(CV).* $(EXTENDED).*
	git commit -m "Update CV"
	git push
