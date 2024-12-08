CVNAME = Andras_Novoszath_CV_BDE

.PHONY: update
update:
	make convert
	git add $(CVNAME).*
	git commit -m "Update CV"
	git push

.PHONY: convert
convert:
	pandoc $(CVNAME).md -o $(CVNAME).pdf \
	--pdf-engine=wkhtmltopdf \
	--pdf-engine-opt=--margin-top --pdf-engine-opt=15 \
	--pdf-engine-opt=--margin-bottom --pdf-engine-opt=15 \
	--pdf-engine-opt=--margin-left --pdf-engine-opt=15 \
	--pdf-engine-opt=--margin-right --pdf-engine-opt=15
