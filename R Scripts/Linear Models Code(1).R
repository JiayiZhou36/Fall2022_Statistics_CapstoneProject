# Loading in Combine2 and Combine3 data sets for Linear Models
write.csv(Combine2, file = "Combine2.csv")
write.csv(Combine3, file = "Combine3.csv")


#Linear Model 1 for Y1
LinearModel1 <- lm(y1 ~ County + Total + HispanicLatino + Black + Violent_Crime_Rate + Property_Crime_Rate + Acquittal_Rates + Dismissal_Rates + as.factor(Defense_Counsel_Types)+ Volume_of_Cases_in_County + Percent_Republican, data = Combine2)
summary(LinearModel1)

#Linear Model 1 Assumptions
par(mfrow=c(2,2))
plot(LinearModel1)


# Linear Model 2 for Y2
LinearModel2 <- lm(y2 ~ County + Total + HispanicLatino + Black + Violent_Crime_Rate + Property_Crime_Rate + Acquittal_Rates + Dismissal_Rates + as.factor(Defense_Counsel_Types)+ Volume_of_Cases_in_County + Percent_Republican, data = Combine3)
summary(LinearModel2)

# Linear Model 2 Assumptions 
par(mfrow=c(2,2))
plot(LinearModel2)

