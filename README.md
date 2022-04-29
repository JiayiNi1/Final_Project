In this project, we dedicate to investigate why Uber and taxis have clashed for years (from 2009 to 2015). The data we collected include “uber rides‘, ‘historical weather data’ and ‘yellow taxi trip data’. We divided our project into four parts: Data Processing, Storing Data, Understanding Data and Visualization Data. First, we scraped yellow taxi trip data from NYC Resources (https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page), and did data preprocessing, mainly by adding distance feature and constraining covered area.  Then, using SQLAlchemy, we created a SQLite database with which we loaded in our preprocessed datasets. After these preparation, we leverage SQL query and matplotlib to look into a lot of questions in our interest, e.g. the most popular hour for uber in a day, the 95% percentile of distance traveled for all hired trips during July 2013, top 10 windest days in 2014 on average and the corresponding amount of trips hired each day.



Group2

UNIs:[zl3104,jn2803]

