#!/bin/bash

# Update my remind calendar
# birthday come from facebook and a local file

if [ $# -ne 1 ]
then
  echo "Usage: `basename $0` { fbBirthday | android | nasa | holiday}"
  exit $E_BADARGS
fi
 
case "$1" in
   'birthday') 
		/usr/bin/curl -s "https://www.facebook.com/ical/b.php?uid=XXXXXXXXXXXXXXXXXXXXXXXXXXXXX" | ~/.bin/ical2rem.pl | \
		/bin/sed -e 's/Anniversaire de //g;s/День рождения //g;s/s* födelsedag//g;s/De verjaardag van //g;s/s* Geburtstag//g;' -e "s/'s birthday//gi"  -e 's/s*%"%/%"%/g' | \
		cut -d " " -f1,2,3,7- | cat - ~/.ical2rem/local_birthdays|sort -u > ~/.ical2rem/birthdays
        ;;
	'android')
		/usr/bin/curl -s --digest --user USER:PASSWORD "https://home.reussner.ch/calendars/foo/foocaluri?export" -k |~/.bin/ical2rem.pl > ~/.ical2rem/android			
		;;
	'nasa')
		echo 1
		/usr/bin/curl -s http://cal.sciboz.com/PhasesLune.ics |~/.bin/ical2rem.pl  | tr -d '\[\]' > ~/.ical2rem/nasa
		echo 2
		/usr/bin/curl -s http://www.nasa.gov/templateimages/redesign/calendar/iCal/nasa_calendar.ics|~/.bin/ical2rem.pl | tr -d '\[\]'  >> ~/.ical2rem/nasa
		echo 3
		#/usr/bin/curl -s http://www.paulschou.com/cal/NASA-JPLSpace/|~/.bin/ical2rem.pl  >> ~/.ical2rem/nasa
		echo 4
		/usr/bin/curl -s http://paulschou.com/cal/NASA-Launch/|~/.bin/ical2rem.pl | tr -d '\[\]'  >> ~/.ical2rem/nasa
		;;
	'holiday')
		/usr/bin/curl -s http://www.mozilla.org/projects/calendar/caldata/IndiaHolidays.ics |~/.bin/ical2rem.pl | tr -d '\[\]'  > ~/.ical2rem/holiday
		/usr/bin/curl -s http://ical.mac.com/ical/Irish32Holidays.ics|~/.bin/ical2rem.pl | tr -d '\[\]'  >> ~/.ical2rem/holiday
		#/usr/bin/curl -s http://ical.mac.com/ical/Indian32Holidays.ics|~/.bin/ical2rem.pl  >> ~/.ical2rem/holiday
		#/usr/bin/curl -s http://icalx.com/public/eirevey/IrishSchoolHolidays.ics|~/.bin/ical2rem.pl  >> ~/.ical2rem/holiday
		;;
	'event')
#		/usr/bin/curl -s http://www.me.com/ca/sharesubscribe/1.1012560951/89A197A8-81F6-4E80-904E-C7C014C51A6E.ics|~/.bin/ical2rem.pl  > ~/.ical2rem/event
		;;
	'tv')
		/usr/bin/curl -s http://www.tv-kalendern.se/calendar.ics |~/.bin/ical2rem.pl | tr -d '\[\]'  > ~/.ical2rem/tv
		;;
		
   *)   echo "Invalid option, choose again..."
        ;;
esac




