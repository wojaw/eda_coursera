**Readme for *Exploratory Data Analysis* course project for week 1**
====================================================================

The *data.csv* file was created using the command:

**awk 'BEGIN { FS=";" } NR==1 || $1 == "1/2/2007" || $1 == "2/2/2007" { print }' household_power_consumption.txt > data.csv**

in the bash shell, in order to select the needed dates.