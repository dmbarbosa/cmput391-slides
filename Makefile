.PHONY: all
all: slides

_PWD = $(shell pwd)

_SOURCEFILES = $(shell find `pwd` -name lec*tex | sort)
_NAVFILES = $(_SOURCEFILES:.tex=.nav)
_AUXFILES = $(_SOURCEFILES:.tex=.aux)
_LOGFILES = $(_SOURCEFILES:.tex=.log)
_TOCFILES = $(_SOURCEFILES:.tex=.toc)
_VRBFILES = $(_SOURCEFILES:.tex=.vrb)
_SNMFILES = $(_SOURCEFILES:.tex=.snm)
_OUTFILES = $(_SOURCEFILES:.tex=.out)
_SYNCTEXFILES = $(_SOURCEFILES:.tex=.synctex.gz)

_PDFFILES = $(_SOURCEFILES:.tex=.pdf)
LECTURES = $(basename $(notdir $(_PDFFILES)))

#
# dependencies for creating the "2_up" handouts
#
HANDOUT_DIR = $(PWD)/2up
_HANDOUTS = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(LECTURES))

.PHONY: slides
slides: $(_PDFFILES)

.PHONY: handouts
handouts: $(_PDFFILES) $(_HANDOUTS)

XR_DIR = /Users/denilson/teaching/cmput391/git-practice/crossref
XRFILES = $(patsubst %,$(XR_DIR)/%.aux,$(LECTURES))

.PHONY: prepare_practice_questions crossref
.PHONY: crossref

crossref: prepare_practice_questions

prepare_practice_questions: $(XRFILES)

LEC00 = $(PWD)/lec00_intro/lec00_intro.pdf
$(LEC00) : $(shell ls $(dir $(LEC00))*tex)
	echo "$(LEC00)"
	cd $(dir $(LEC00)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC00)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC00))));
OUT00 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC00))))
$(OUT00): $(LEC00)
	pdfjam --nup 1x2 --scale 0.95 $(LEC00) -o $(OUT00)
XR00 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC00))))
$(XR00): $(LEC00)
	rm -f $(XR00); \
	grep -e "^.newlabel" $(LEC00:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR00)


LEC01 = $(PWD)/lec01_algebra/lec01_algebra.pdf
$(LEC01) : $(shell ls $(dir $(LEC01))*tex)
	echo "$(LEC01)"
	cd $(dir $(LEC01)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC01)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC01))));
OUT01 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC01))))
$(OUT01): $(LEC01)
	pdfjam --nup 1x2 --scale 0.95 $(LEC01) -o $(OUT01)
XR01 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC01))))
$(XR01): $(LEC01)
	rm -f $(XR01); \
	grep -e "^.newlabel" $(LEC01:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR01)


LEC02 = $(PWD)/lec02_sql/lec02_sql.pdf
$(LEC02) : $(shell ls $(dir $(LEC02))*tex)
	echo "$(LEC02)"
	cd $(dir $(LEC02)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC02)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC02))));
OUT02 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC02))))
$(OUT02): $(LEC01)
	pdfjam --nup 1x2 --scale 0.95 $(LEC02) -o $(OUT02)
XR02 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC02))))
$(XR02): $(LEC02)
	rm -f $(XR02); \
	grep -e "^.newlabel" $(LEC02:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR02)


LEC03 = $(PWD)/lec03_hardware/lec03_hardware.pdf
$(LEC03) : $(shell ls $(dir $(LEC03))*tex)
	echo "$(LEC03)"
	cd $(dir $(LEC03)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC03)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC03))));
OUT03 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC03))))
$(OUT03): $(LEC03)
	pdfjam --nup 1x2 --scale 0.95 $(LEC03) -o $(OUT03)
XR03 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC03))))
$(XR03): $(LEC03)
	rm -f $(XR03); \
	grep -e "^.newlabel" $(LEC03:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR03)


LEC04 = $(PWD)/lec04_access_methods/lec04_access_methods.pdf
$(LEC04) : $(shell ls $(dir $(LEC04))*tex)
	echo "$(LEC04)"
	cd $(dir $(LEC04)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC04)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC04))));
OUT04 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC04))))
$(OUT04): $(LEC04)
	pdfjam --nup 1x2 --scale 0.95 $(LEC04) -o $(OUT04)
XR04 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC04))))
$(XR04): $(LEC04)
	rm -f $(XR04); \
	grep -e "^.newlabel" $(LEC04:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR04)


LEC05 = $(PWD)/lec05_query_processing/lec05_query_processing.pdf
$(LEC05) : $(shell ls $(dir $(LEC05))*tex)
	echo "$(LEC05)"
	cd $(dir $(LEC05)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC05)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC05))));
OUT05 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC05))))
$(OUT05): $(LEC05)
	pdfjam --nup 1x2 --scale 0.95 $(LEC05) -o $(OUT05)
XR05 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC05))))
$(XR05): $(LEC05)
	rm -f $(XR05); \
	grep -e "^.newlabel" $(LEC05:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR05)


LEC06 = $(PWD)/lec06_transactions/lec06_transactions.pdf
$(LEC06) : $(shell ls $(dir $(LEC06))*tex)
	echo "$(LEC06)"
	cd $(dir $(LEC06)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC06)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC06))));
OUT06 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC06))))
$(OUT06): $(LEC06)
	pdfjam --nup 1x2 --scale 0.95 $(LEC06) -o $(OUT06)
XR06 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC06))))
$(XR06): $(LEC06)
	rm -f $(XR06); \
	grep -e "^.newlabel" $(LEC06:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR06)


LEC07 = $(PWD)/lec07_documents/lec07_documents.pdf
$(LEC07) : $(shell ls $(dir $(LEC07))*tex)
	echo "$(LEC07)"
	cd $(dir $(LEC07)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC07)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC07))));
OUT07 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC07))))
$(OUT07): $(LEC07)
	pdfjam --nup 1x2 --scale 0.95 $(LEC07) -o $(OUT07)
XR07 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC07))))
$(XR07): $(LEC07)
	rm -f $(XR07); \
	grep -e "^.newlabel" $(LEC07:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR07)


LEC08 = $(PWD)/lec08_nosql/lec08_nosql.pdf
$(LEC08) : $(shell ls $(dir $(LEC08))*tex)
	echo "$(LEC08)"
	cd $(dir $(LEC08)); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC08)))); \
	xelatex $(addsuffix .tex, $(basename $(notdir $(LEC08))));
OUT08 = $(patsubst %,$(HANDOUT_DIR)/%_2up.pdf,$(basename $(notdir $(LEC08))))
$(OUT08): $(LEC08)
	pdfjam --nup 1x2 --scale 0.95 $(LEC08) -o $(OUT08)
XR08 = $(patsubst %,$(XR_DIR)/%.aux,$(basename $(notdir $(LEC08))))
$(XR08): $(LEC08)
	rm -f $(XR08); \
	grep -e "^.newlabel" $(LEC08:.pdf=.aux) | awk -F"{" '{print $$1"{"$$2"{"$$3"{"$$4"{}{}}"}' | uniq -u >> $(XR08)


.PHONY: clean
clean:
	for file in $(_NAVFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_AUXFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_LOGFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_TOCFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_VRBFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_SNMFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_OUTFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_SYNCTEXFILES) ; do \
		rm -f $$file ; \
	done

.PHONY: distclean

distclean: clean
	for file in $(_PDFFILES) ; do \
		rm -f $$file ; \
	done
	for file in $(_HANDOUTS) ; do \
		rm -f $$file ; \
	done

