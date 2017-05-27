
# install.packages("lubridate", repos = "https://cloud.r-project.org/")

library(lubridate)

# Hide all the warning like the one above
options(warn = -1)

# From when the series should start
Starting_Date <- ymd("2017-01-01")

# To when the series should end
Ending_Date <- ymd("2017-03-31")

# By what value, the increment should be there (in this example increment is by one week)
By <- "1 week"

# Generate the series
seq(Starting_Date, Ending_Date, by = By)

# One week increment above is same as below
seq(Starting_Date, Ending_Date, by = 'weeks')

# But suppose if we change the increment value, say, by two weeks, then?
By2 = "2 weeks"
seq(Starting_Date, Ending_Date, by = By2)

By3 = "days"

seq(Starting_Date, Ending_Date, by = By3)

By4 = "7 days"
seq(Starting_Date, Ending_Date, by = By4)

By5 = "months"
seq(Starting_Date, Ending_Date, by = By5)

By6 = "3 months"
seq(Starting_Date, Ending_Date, by = By6)

By7 = "quarters"
seq(Starting_Date, Ending_Date, by = By7)

# From when the series should start
StartingDate <- ymd("2010-01-01")

# To when the series should end
EndingDate <- ymd("2016-12-31")

# By what value, the increment should be there (in this example increment is by one week)
ByDays <- "days"

# Generate the series
SampleDates <- seq(StartingDate, EndingDate, by = ByDays)

# Just to confirm that we got the data right..
head(SampleDates)
tail(SampleDates)
cat("No. of Days: ", length(SampleDates))

## Create a function to compute leap year
# Pass a year and compute whether that is a leap year or not?
LeapYear = function(year){
  return(((year %% 4 == 0) & (year %% 100 != 0)) | (year %% 400 == 0))
}

# Whether 2017 is a leap year?
year = 2017
LeapYear(year)
ifelse(LeapYear(year)==TRUE, paste(year, "is a leap year"), paste(year, " is not a leap year"))

# Which all years are there?
unique(year(SampleDates))
# Are these Leap Year?
LeapYear(unique(year(SampleDates)))

library(lubridate)

head(SampleDates)
str(SampleDates)

# lubridate::
week(ymd("2014-03-16", "2014-03-17","2014-03-18", '2014-01-01'))

day(ymd(head(SampleDates, n=10)))
week(ymd(head(SampleDates, n=10)))

# Convert the date format
dt <- as.POSIXlt(SampleDates)
# Retreive the Day No. (+1, otherwise index will start at 0)
head(dt$yday+1)

head(dt$yday+1, n=25)

# to get number of week:
head((dt$yday)%/%7 +1 , n=50)

(dt$yday)%/%7 +1


