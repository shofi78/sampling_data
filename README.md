# Sampling_data Repository
This is a task repository for our Shell Tooling course. We are learning Github repository.

## Content
* Sampling data folder
* Script at sampling.sh

### An expanation of code/script in sampling.sh
Inside the repository we create a script with the name sampling.sh where it will run the command:

1. Download an excel file from this [link](https://github.com/labusiam/dataset/raw/main/weather_data.xlsx) and save it in the data folder
2. In the data folder convert each sheet in the weather_data.xlsx file to:
   * Sheet weather_2014 becomes file weather_2014.csv
   * Sheet weather_2015 becomes file weather_2015.csv
3. Merge weather_2014 and weather_2015 data into 1 csv then name it weather.csv. Also delete the file weather_data.xlsx
4. Sampling the weather.csv file with a rate of 0.3 then save it to the sample_weather.csv file
