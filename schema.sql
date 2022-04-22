CREATE TABLE uber (
    id INTEGER NOT NULL, 
    pickup_datetime DATETIME, 
    pickup_longitude FLOAT, 
    pickup_latitude FLOAT, 
    dropoff_longitude FLOAT, 
    dropoff_latitude FLOAT, 
    distance FLOAT, 
    PRIMARY KEY (id)
);

CREATE TABLE yellow_taxi (
    id INTEGER NOT NULL, 
    pickup_datetime DATETIME, 
    dropoff_datetime DATETIME, 
    pickup_longitude FLOAT, 
    pickup_latitude FLOAT, 
    dropoff_longitude FLOAT, 
    dropoff_latitude FLOAT, 
    tip_amount FLOAT, 
    distance FLOAT, 
    PRIMARY KEY (id)
);

CREATE TABLE weather_hourly (
    id INTEGER NOT NULL, 
    "DATE" DATETIME, 
    "HourlyPrecipitation" FLOAT, 
    "HourlyWindSpeed" FLOAT, 
    PRIMARY KEY (id)
);

CREATE TABLE weather_daily (
    id INTEGER NOT NULL, 
    "DATE" DATE, 
    "DailyPrecipitation" FLOAT, 
    "DailyAverageWindSpeed" FLOAT, 
    "DailySustainedWindSpeed" FLOAT, 
    PRIMARY KEY (id)
)