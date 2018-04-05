#!/bin/bash

file=`ls /app/tomcat/logs | grep server.log.2018 | grep -v .gz`
for i in $file
do
        gzip /app/tomcat/logs/$i > /dev/null 2>&1

done

file1=`ls /app/tomcat/logs | grep .gz`
for j in $file1
do
	mv /app/tomcat/logs/$j > /nfs/applogs/${hname}

done
