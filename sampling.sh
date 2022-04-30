#!/usr/bin/bash

# Mendownload file excel dan menyimpan ke folder data

wget -P data https://github.com/labusiam/dataset/raw/main/weather_data.xlsx


# Convert setiap sheet pada file weather_data.xlsx ke dalam file csv

FILE=/home/shofi/tugas/tugas4/sampling_data/data/weather_data.xlsx

if [[ -f "$FILE" ]]; then
	echo "file exist"
	in2csv $FILE --sheet "weather_2014" > /home/shofi/tugas/tugas4/sampling_data/data/weather_2014.csv
	in2csv $FILE --sheet "weather_2015" > /home/shofi/tugas/tugas4/sampling_data/data/weather_2015.csv
else
	echo "File weather_data.xlsx belum ada di folder data"

fi

#  Gabungkan Data weather 2014 dan 2015 menjadi 1 csv kemudian beri nama  weather.csv
# Lalu hapus file weather_data.xlsx

FILE1=/home/shofi/tugas/tugas4/sampling_data/data/weather_2014.csv
FILE2=/home/shofi/tugas/tugas4/sampling_data/data/weather_2015.csv

if [[ -f $FILE1 && -f $FILE2 ]]; then
	echo "both file exist"
	csvstack $FILE1 $FILE2 > /home/shofi/tugas/tugas4/sampling_data/data/weather.csv
	 rm -rf $FILE
else
	echo "File weather_2014.csv dan weather_2015.csv belum ada di folder data"

fi

# Lakukan sampling file weather.csv dengan rate 0.3, simpan kedalam file sample_weather.csv

FILE3=/home/shofi/tugas/tugas4/sampling_data/data/weather.csv

if [[ -f "$FILE3" ]]; then
	echo "file exist"
	cat $FILE3 | sample -r 0.3 > /home/shofi/tugas/tugas4/sampling_data/data/sample_weather.csv

else
	echo "File weather.csv belum ada di folder data"

fi
