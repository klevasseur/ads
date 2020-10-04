#!/bin/bash
java -classpath ../../jing-trang/build -Dorg.apache.xerces.xni.parser.XMLParserConfiguration=org.apache.xerces.parsers.XIncludeParserConfiguration -jar ../../jing-trang/build/jing.jar ../../mathbook/schema/pretext.rng src/ads.xml > ads_validation.txt
