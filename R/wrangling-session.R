NHANES

nhanes_chars <- NHANES %>%
  select(SurveyYr, Gender, Age, Weight, Height, BMI, BPSysAve)
nhanes_chars

nhanes_long <- nhanes_chars %>%
  gather(Measure, Value, -SurveyYr, -Gender)
nhanes_long

nhanes_sum<-nhanes_long %>%
  group_by( Gender, SurveyYr,Measure) %>%
  summarise(MeanValue = mean(Value, na.rm = TRUE))

nhanes_sum %>%
  spread(key = SurveyYr,value=MeanValue)


