cat $(find . -regex ".*2011.10.*/*./hp-temps.txt" | tr " "  ) | grep PROCESSOR_ZONE

#new better version
find . -regex ".*2011.10.*/*./hp-temps.txt" -exec grep PROCESSOR_ZONE {} \;
