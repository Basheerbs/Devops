#!/bin/bash

if [ -f  /etc/mcollective/monsoonfacts.yaml ]
        then
                hname=`/usr/local/bin/moname`
        else
                hname=`hostname`
fi
file=`ls /app/tomcat/logs | grep -P 'server.log..+' | grep -v .gz`
for i in $file
do
        gzip /app/tomcat/logs/$i > /dev/null 2>&1
        mv /app/tomcat/logs/$i.gz /nfs/applogs/${hname}

done
