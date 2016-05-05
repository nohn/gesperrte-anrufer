#!/usr/bin/env bash

uniqueid=1
echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>"
echo "<phonebooks>"
echo "<phonebook owner=\"1\" name=\"Gesperrte Anrufer\">";
for line in $(cat gesperrte-anrufer.txt); do
    echo "<contact><category>0</category><person><realName>Gesperrt</realName></person><telephony nid=\"1\"><number type=\"work\" prio=\"1\" id=\"0\">$line</number></telephony><services /><setup /><mod_time>$(date +%s)</mod_time><uniqueid>$uniqueid</uniqueid></contact>";
    uniqueid=$[$uniqueid +1]
done
echo "</phonebook>"
echo "</phonebooks>"
