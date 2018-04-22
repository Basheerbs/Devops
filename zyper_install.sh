#!/bin/bash

echo "1. lsb-release info:"
echo "--------------------"
zypper info lsb-release| grep "Installed"

lsb=$(zypper info lsb-release| grep "Installed"| grep -o "Yes")
if [ "$lsb" = "Yes" ]
then
        echo "Check OK"
        check=("${check[@]}" "3. lsb-release info")
        success=("${success[@]}" "Check OK")
else
        #zypper install  lsb-release
        echo "Installed Successfully"
fi
