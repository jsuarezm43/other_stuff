#Project 1
#Group Virginia 2

pollNames <- c('Remington','SurveyMonkey','Christopher Newport University','The Times-Picayune/Lucid','Emerson College','Tarrance Group','Public Policy Polling','YouGov','Hampton University','Roanoke College','Quinnipiac University','Google Consumer Surveys','Ipsos','Christopher NewPort University','University of Mary Washington','Public Policy Polling','Christopher Newport University','The Washington Post','Emerson College','Roanoke College','Marist College','Hampton University','Quinnipiac University','Google Consumer Surveys','Christopher Newport University','SurveyMonkey','Ipsos','Fox News','Marist College','RABA Research','Ipsos','YouGov','SurveyMonkey','Google Consumer Surveys','Evolving Strategies','Google Consumer Surveys','Roanoke College','Hampton University','Gravis Marketing','Google Consumer Surveys','Ipsos','Ipsos','SurveyMonkey','Public Policy Polling','Ipsos','Google Consumer Surveys','Ipsos','Google Consumer Surveys','Google Consumer Surveys','Google Consumer Surveys','Ipsos','Google Consumer Surveys','Ipsos','Google Consumer Surveys','Ipsos','Google Consumer Surveys','Roanoke College','Christopher Newport University','Hampton University','Roanoke College','Roanoke College')
prediction <- c('Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Trump','Clinton','Clinton','Clinton','Clinton','Clinton','Trump','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton','Clinton')
predictionNum <- c(5,9,12,5,3,9,6,8,12,9,6,12,12,15,3,6,7,7,1,7,12,2,11,10,6,11,10,5,7,4,8,12,9,13,8,3,16,0,6,14,10,13,7,3,11,8,7,1,6,7,13,9,11,7,6,14,0,9,9,17,14)
predictionNumAdj <- c(7,9,11,3,5,10,7,11,14,8,10,11,11,14,6,8,7,7,4,8,10,4,13,9,7,12,10,7,6,3,10,13,9,12,6,2,15,2,8,15,12,15,8,4,12,10,8,1,8,8,14,10,12,8,7,15,0,8,10,17,15)
percentClinton <- c(48,48,45,43,46,47,46,45,46,45,45,43,49,44,40,45,42,46,44,44,43,43,45,41,39,49,49,39,41,42,48,49,48,41,43,34,48,39,44,41,47,50,43,42,50,40,47,37,37,36,50,39,48,36,45,40,38,44,48,52,50)
percentTrump <- c(43,39,33,38,43,38,40,37,34,36,39,31,37,29,37,39,35,39,43,37,31,41,34,31,33,38,39,34,34,46,40,37,39,28,35,37,32,39,38,27,38,37,36,39,39,32,40,37,31,29,37,30,37,29,39,26,38,35,39,35,36)
letterGrade <- c('','C-','B-','','B','B','B+','B','B','C+','A-','B','A-','B-','','B+','B-','A+','B','C+','A','B','A-','B','B-','C-','A-','A','A','C+','A-','B','C-','B','','B','C+','B','B-','B','A-','A-','C-','B+','A-','B','A-','B','B','B','A-','B','A-','B','A-','B','C+','B-','B','C+','C+')
whoPolled <- c('LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','RV','LV','LV','LV','LV','LV','LV','RV','RV','RV','LV','LV','LV','LV','LV','LV','LV','LV','RV','LV','LV','LV','RV','V','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','LV','RV')
endDate <- as.Date(c('2016-10-22','2016-10-26','2016-10-19','2016-10-18','2016-10-12','2016-10-15','2016-9-28','2016-9-23','2016-10-2','2016-10-6','2016-9-21','2016-10-24','2016-10-20','2016-10-14','2016-9-12','2016-9-11','2016-9-30','2016-8-14','2016-9-1','2016-9-20','2016-8-10','2016-8-28','2016-8-16','2016-10-19','2016-9-23','2016-10-16','2016-10-13','2016-7-12','2016-7-11','2016-7-27','2016-9-29','2016-8-5','2016-10-25','2016-10-14','2016-6-22','2016-10-9','2016-8-17','2016-6-10','2016-5-24','2016-10-3','2016-9-15','2016-9-8','2016-9-1','2016-6-15','2016-10-6','2016-9-26','2016-9-22','2016-9-20','2016-9-13','2016-9-6','2016-9-1','2016-8-30','2016-8-25','2016-8-23','2016-8-18','2016-8-16','2016-5-17','2016-4-3','2016-2-22','2016-1-26','2015-11-13'))
daysTill <- c(17,13,20,21,27,24,41,46,37,33,48,15,19,25,57,58,39,86,68,49,90,72,84,20,46,23,26,119,120,104,40,95,14,25,139,30,83,151,168,36,54,61,68,146,33,43,47,49,56,63,68,70,75,77,82,84,175,219,260,287,361)



polls.data <-data.frame(pollNames,prediction,predictionNum,predictionNumAdj,percentClinton,percentTrump,letterGrade,whoPolled,endDate,daysTill)

# change the variable: "prediction" to {0 or 1}, if it is "Clinton", Y=1, if it is "Trump", Y=0
Y=rep(0, nrow(polls.data))
for(i in 1:nrow(polls.data)){
  if(polls.data$prediction[i]=="Clinton"){Y[i]=1} 
  if(polls.data$prediction[i]=="Trump"){Y[i]=0}
}

polls.data=cbind(Y, polls.data)
polls.data=subset(polls.data, polls.data$daysTill<150)


# Logistic Regression, logistic regression can only be used when Y equal to {0, or 1}, therefore, for logistic regression, the only viable response variable (Y) is "Prediction"
logistic.regression=glm(Y ~ daysTill, data = polls.data, family = "binomial") # train model. Tune var names
summary(logistic.regression)

# Beta regression, beta regression can only be used when Y is a percent or proportion, i.e. Y is between 0 and 1, the only viable response variable (Y) is "percentClinton" or "percentTrump"
# install.packages("betareg")
library(betareg)
# change the number in "percentClinton" or "percentTrump" back to decimal numbers:
polls.data$percentTrump=polls.data$percentTrump/100
polls.data$percentClinton=polls.data$percentClinton/100

# using percentClinton as Y
beta.regression=betareg(percentClinton ~ daysTill, data = polls.data)
summary(beta.regression)

# using percentTrump as Y
beta.regression2=betareg(percentTrump ~ daysTill, data = polls.data)
summary(beta.regression2)

# LOESS regression for curve fitting
# using percentClinton as Y
loess.regression=loess(percentClinton ~ daysTill, data = polls.data)
summary(loess.regression)
# using percentTrump as Y
loess.regression2=loess(percentTrump ~ daysTill, data = polls.data)
summary(loess.regression2)
# You can only compare LOESS regression with beta regression. Logistic regression uses "Prediction" as Y, so you cannot compare this model to the other regressions.

new=data.frame(days = polls.data$daysTill)
predicted.percentClinton=predict(beta.regression, newdata = new)
predicted.percentTrump=predict(beta.regression2, newdata = new)
polls.data=cbind(predicted.percentClinton, predicted.percentTrump, polls.data)

plot(percentClinton ~ daysTill, data = polls.data, main="beta regression percent clinton")
lines(predicted.percentClinton~polls.data$daysTill, col="red")
plot(percentClinton ~ daysTill, data = polls.data, main="beta regression percent trump")
lines(predicted.percentTrump~polls.data$daysTill, col="red")


new2=data.frame(days = polls.data$daysTill)
predicted.percentClinton2=predict(loess.regression, newdata = new2)
predicted.percentTrump2=predict(loess.regression2, newdata = new2)
polls.data=cbind(predicted.percentClinton2, predicted.percentTrump2, polls.data)
bind=cbind(predicted.percentClinton2, daysTill)
bind=as.data.frame(bind)
bind=bind[order(daysTill),]
bind2=cbind(predicted.percentTrump2, daysTill)
bind2=as.data.frame(bind2)
bind2=bind2[order(daysTill),] 

plot(percentClinton ~ daysTill, data = polls.data, main="loess regression percent clinton")
lines(predicted.percentClinton2~daysTill, data=bind, col='red')
plot(percentClinton ~ daysTill, data = polls.data, main="loess regression percent trump")
lines(predicted.percentTrump2~daysTill, data=bind2, col="red")
