#!/bin/zsh

source $HOME/.ascii-host.zsh
source $HOME/.weather-code.sh

echo $ASCII
echo "--------------------------------------------------------------"
echo ""
#UNAME=$(uname -srn)
WEATHER=$(/bin/sh $ZSH/lib/weather.sh)
#LASTLOG=$(lastlog -u $USER)
#LOGIN="$LASTLOG[(w)8] $LASTLOG[(w)9] $LASTLOG[(w)10] $LASTLOG[(w)11] from $LASTLOG[(w)7]"
#UPTIME=$(uptime)

#UP="$UPTIME[(w)3] days"
#USAGE=$(/usr/bin/du -ms $HOME)[(w) 0]

#echo "  System........: $UNAME"
#echo "  Last Login....: $LOGIN"
#echo "  Uptime........: $UP"
#echo "  Disk Usage....: You're using $USAGE MB in $HOME"
echo "  Weather: $CITY: $WEATHER"

landscape-sysinfo
