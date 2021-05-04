hours=c(2.5,5.1,3.2,8.5,3.5,1.5,9.2,5.5,8.3,2.7,7.7,5.9,4.5,3.3,1.1,8.9,2.5,1.9,6.1,7.4,2.7,4.8,3.8,6.9,7.8)
hours

scores=c(21,47,27,75,30,20,88,60,81,25,85,62,41,42,17,95,30,24,67,69,30,54,35,76,86)
scores

length(hours)
length(scores)

df=data.frame(hours,scores)
df

plot(hours,scores,pch=16,cex=0.8,col='blue',main = "Hours Vs Percentage",xlab ="Number of hours studied",ylab = "Marks Scored" )
abline(lm(scores~hours),cex=1.5,col="red")


model=lm(scores~hours)
model
summary(model)

estimated_score=fitted(model)
d=data.frame(hours,scores,estimated_score)
d
plot(hours,estimated_score,pch="*",col="green")
points(hours,scores,pch="+",col="blue")
abline(lm(scores~hours),cex=1.5,col="red")
legend(1,95,legend=c("+ : scores", "* : estimated_score"),col=c("blue","green"),bty="n",)


cr=coefficients(model)
cr
mcr=matrix(cr)
mcr

print("our model is: score=2.4837+9.7758(hours)")

b0=mcr[1,1];b1=mcr[2,1]
hr=9.25
b0;b1;hr
y=b0+b1*hr
y
print("The estimated score is 92.90985 if a student studies for 9.25 hours")

