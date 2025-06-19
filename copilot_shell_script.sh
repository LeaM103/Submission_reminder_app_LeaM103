#!/bin/bash
#When you input an assignment name it will display good job.	
read -p "Enter assignment name: " leah
Dire=$(find . -type d -name "submission_reminder_*" | tail -n 1)
echo "Found $Dire"
Mugabo="${Dire}/config/config.env"
class=$(echo "$leah" | tr '[:upper:]' '[:lower:]')
sed -i "s/ASSIGNMENT=.*/ASSIGNMENT=\"${leah}\"/" "$Mugabo"
echo " Diplay good job "
