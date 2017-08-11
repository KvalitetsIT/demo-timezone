#! /bin/ash
if [ "$CONTAINER_TIMEZONE" = "" ]
then
   echo "Using default timezone"
else
	
	TZFILE="/usr/share/zoneinfo/$CONTAINER_TIMEZONE"
	if [ ! -e "$TZFILE" ]
	then 
    	echo "requested timezone $CONTAINER_TIMEZONE doesn't exist"
	else
		cp /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime
		echo "$CONTAINER_TIMEZONE" > /etc/timezone
		echo "using timezone $CONTAINER_TIMEZONE"
	fi
fi

java -version
date
