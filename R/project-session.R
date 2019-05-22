sd
lm

add_two <- function(x,y) {
    print(x)
    added <- x+y
    return(added)
}
add_two(2,6)

add_two(y=6,x=1)

usethis::use_r("package-loading")
source(here::here("R/package-loading.R"))

#####################SAVE DATA#######################
write_csv(iris, here::here("data/iris.csv"))
imported_iris <- read_csv(here::here("data/iris.csv"))
head(imported_iris)

NHANES
glimpse(NHANES)
table1

NHANES %>%
  summarise(MaxAge = max(Age, na.rm = TRUE),
            MeanBMI = mean(BMI, na.rm = TRUE))

NHANES %>%
  group_by(Gender) %>%
  summarise(MaxAge = max(Age, na.rm = TRUE),
            MeanBMI = mean(BMI, na.rm = TRUE),
            MeanAge = mean(Age, na.rm=T))

table4b

table4b %>%
  gather(year, population, -country)

table4b %>%
  gather(year, population,'2000','1999')

nhanes_chars <- NHANES %>%
  select(SurveyYr, Gender, Age, Weight, Height, BMI, BPSysAve)
nhanes_chars

nhanes_long <- nhanes_chars %>%
  gather(Measure, Value, -SurveyYr, -Gender)
nhanes_long

nhanes_long %>%
  group_by(SurveyYr, Gender, Measure) %>%
  summarise(MeanValue = mean(Value, na.rm = TRUE))

table2

table2 %>%
  spread(key = type, value = count)

nhanes_sum<-nhanes_long %>%
  group_by(SurveyYr, Gender, Measure) %>%
  summarise(MeanValue = mean(Value, na.rm = TRUE))

nhanes_sum %>%
  spread(Gender,MeanValue)


