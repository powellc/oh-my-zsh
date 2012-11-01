#!/bin/sh

# Find your own code at the end of the url here http://www.accuweather.com/rss-center.asp
# If code has a space; replace with %20 
#Example: ASI|RU|RS055|NIZHNY%20NOVGOROD
$HOME/.weather-code.sh

METRIC=0  # 0 for F, 1 for C

if [ -z $1 ] && [ -x $LOCCOD ] ; then
        echo
        echo "USAGE: $0 [locationcode]"
        echo
        exit 0;
elif [ ! -z $1 ] ; then
        LOCCOD=$1
fi

curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$LOCCOD \
| sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'
