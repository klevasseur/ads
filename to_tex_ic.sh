#!/bin/bash
xsltproc --xinclude  --stringparam exercise.divisional.solution "yes" --stringparam exercise.divisional.answer  "yes"  ../../mathbook/xsl/pretext-latex.xsl src/ic.xml > ic.tex