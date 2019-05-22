head(imputed_attributes_collapsed)
summary(imputed_attributes_collapsed)

#Logistic Regression Model

imputed_attributes_collapsed$gender <- factor(imputed_attributes_collapsed$gender)
imputed_attributes_collapsed$samerace <- factor(imputed_attributes_collapsed$samerace)
mylogit <- glm(match ~ age + gender + samerace + attr_3 + sinc_3 + intel_3 + fun_3 + amb_3, data = imputed_attributes_collapsed, family = "binomial")
summary(mylogit)
confint(mylogit)

#Effects Plotting

install.packages("effects")
library(effects)
mylogita <- glm(match ~ age, data = imputed_attributes_collapsed, family = "binomial")
mylogitg <- glm(match ~ gender, data = imputed_attributes_collapsed, family = "binomial")
mylogitsr <- glm(match ~ samerace, data = imputed_attributes_collapsed, family = "binomial")
mylogitsa <- glm(match ~ attr_3, data = imputed_attributes_collapsed, family = "binomial")
mylogitss <- glm(match ~ sinc_3, data = imputed_attributes_collapsed, family = "binomial")
mylogitsi <- glm(match ~ intel_3, data = imputed_attributes_collapsed, family = "binomial")
mylogitsf <- glm(match ~ fun_3, data = imputed_attributes_collapsed, family = "binomial")
mylogitsamb <- glm(match ~ amb_3, data = imputed_attributes_collapsed, family = "binomial")


plot(allEffects(mylogit))
plot(allEffects(mylogita))
plot(allEffects(mylogitg))
plot(allEffects(mylogitsr))
plot(allEffects(mylogitsa))
plot(allEffects(mylogitss))
plot(allEffects(mylogitsi))
plot(allEffects(mylogitsf))
plot(allEffects(mylogitsamb))

summary(Speed_Dating_Data)
mylogitfun <- glm(match ~ fun3_2, data = Speed_Dating_Data, family = "binomial")
mylogitintel <- glm(match ~ intel3_2, data = Speed_Dating_Data, family = "binomial")
mylogitattr <- glm(match ~ attr3_2, data = Speed_Dating_Data, family = "binomial")



summary(mylogitfun)
summary(mylogitintel)
summary(mylogitattr)


Speed_Dating_Data$age_diff <- (Speed_Dating_Data$age - Speed_Dating_Data$age_o)
summary(Speed_Dating_Data$age_diff)

mylogitagediff <- glm(match ~ age_diff, data = Speed_Dating_Data, family = "binomial")
summary(mylogitagediff)
plot(allEffects(mylogitagediff))

