#!/bin/bash
xsltproc --xinclude --stringparam exercise.divisional.solution "no" --stringparam exercise.divisional.answer  "no" ../../mathbook/xsl/pretext-latex.xsl src/ads-2.xml > ads-2.tex