library(devtools)  #ensure the "devtools" library is active

install_github("bogfossil/AccumC-package")  # installs AccumC from github

dates <- read.csv("alaskaDates.csv")  # make sure the file path is correct for you

car <- AccumC(dates, pct_C = 1)  # when pct_C is 1, values stored in the "afbd" column are
                                 # actually carbon density, not ash-free bulk density

plot(car$rates$age, car$rates$`C accum. rate (g/m^2/a)`, t = "o")  #plot the median CAR



