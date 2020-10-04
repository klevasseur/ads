#!/bin/bash
xsltproc --xinclude -stringparam html.statcounter.project 11204831 -stringparam html.statcounter.security 957c565b ../../mathbook/xsl/pretext-html.xsl  src/ads.xml >ads.html