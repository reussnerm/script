#!/usr/bin/env bash
#Generate a weekly calendar from remind

#month
#rem -w232 -cu1  -m |iconv -f utf8 -t ascii//TRANSLIT| pbmtext -builtin fixed | pnmcrop | \
# ppmchange rgb:00/00/00 rgb:ff/00/00 | ppmchange rgb:ff/ff/ff rgb:00/00/00 | \
# pnmtopng -interlace  > ~/.cal.png
#week
rem -w232 -c+1  -m |iconv -f utf8 -t ascii//TRANSLIT| pbmtext -builtin fixed | pnmcrop | \
 ppmchange rgb:00/00/00 rgb:ff/00/00 | ppmchange rgb:ff/ff/ff rgb:00/00/00 | \
 pnmtopng -interlace  > ~/.cal.png
