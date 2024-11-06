###################
###The dice example - Goodness of fit

##Enter the data
dice_obs <- c(53222, 52118, 52465, 52338, 52244, 53285)
exp = 52612/315672
dice_exp <- c(exp, exp, exp, exp, exp, exp) 
##Note that expected values MUST be probabilities that sum up to 1


##Run the test
chisq.test(dice_obs, p = dice_exp)


##If you want to extract the expected values that R calculated:
names(chisq.test(dice_obs, p = dice_exp))
dice_exp_values <- chisq.test(dice_obs, p = dice_exp)$expected


##One way to graph this data
barplot(dice_obs, ylim = c(50000, 56000), xpd = FALSE, names=c(1:6), ylab="Number of occurances", xlab="Face of the die") 
#xpd=F keeps bars from running off the graph

abline(h = 52612, lty = 3) #A horizontal line showing the expected values







############################
##Test of independence - Popoular kids
##For contingency tables, we need to first create a matrix, then give that to the 
##chi-squared test. Additionally, matrices are well-suited for making barplots of the data:

##Make a matrix (the byrow=T argument means you are entering values from left to right)
popular <- matrix(c(63, 31, 25, 88, 55, 33, 96, 55, 32), byrow = TRUE, nrow = 3)


##Run the test
chisq.test(popular)


##Graph the result (the beside=T argument keeps the bars next to each other instead of stacked)
##Note that values will be grouped by the column variable and the legend will represent the row variable
barplot(popular, beside = TRUE, names = c("Grades", "Popular", "Sports"), legend = c("4th", "5th", "6th"), ylim = c(0,100))






