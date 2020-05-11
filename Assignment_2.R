
### QUESTION 1 ###
# Simulate 2 samples of size n of independent random variables, normal and exponential respectively, 
# having the same mean and variance

n = 10000 # number of simulations
mu = 2 # mean of normal distribution
sd = 5 # standard deviation of normal distribution
lambda_exp = 1/mu

set.seed(124)

data_norm = rnorm(n, mu, sd)          # generating random numbers from normal distribution
data_exp = rexp(n,lambda_exp)          # generating random numbers from exponential distribution

hist(data_norm, 
     main = "Histogram of Normal Distribution", 
     xlab = "Normal Distribution",
     col="grey",
     breaks=50,
     prob = TRUE)

hist(data_exp, 
     main = "Histogram of Exponential Distribution", 
     xlab = "Exponential Distribution",
     col="grey",
     breaks=50,
     prob = TRUE)

### QUESTION 2 ###
# Simulate the probability density function of the exponential sample for n = 5, 50, 500, 5000, 10000
# What do you observe for the empirical mean ?

lambda = 10
n_list = c(5, 50 , 500, 5000, 10000)

