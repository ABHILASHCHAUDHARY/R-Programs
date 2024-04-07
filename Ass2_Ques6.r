#Question 6
var_sd_rand = rnorm(100, mean = 50, sd = 10)
print(var_sd_rand)
var_sd_rand_mean=round(mean(var_sd_rand))
print(paste("ANS: original mean:",var_sd_rand_mean))
var_sd_rand_mean_2 = var_sd_rand_mean+2
var_sd_rand_mean_m2 = var_sd_rand_mean-2


for (x in 1:length(var_sd_rand)) {
  if(round(var_sd_rand[x]) == var_sd_rand_mean_2 || round(var_sd_rand[x]) == var_sd_rand_mean_m2) {
    print(paste("ANS: values within sd 2 of:",var_sd_rand_mean,"is",var_sd_rand[x]))
  }
}