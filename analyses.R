######## Analyses - Audit survey

library(stats)
library(janitor)
library(DescTools)

load(file = "analytic_sample.Rda")

## TABLE 1: Summary stats ----

# get summary stats for demographics table
tabyl(analytic_sample, pharmtype)
tabyl(analytic_sample, region)
tabyl(analytic_sample, nchs_code)

median(analytic_sample$prop_65plus)
median(analytic_sample$total_pop)
median(analytic_sample$pct_white)
median(analytic_sample$median_income)

## Confidence intervals for overall availability

# overall shingles availability 
tabyl(analytic_sample, shing_avail)

binom.test(361, 384, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)
binom.test(23, 384, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)

# overall flu availability
tabyl(analytic_sample, flu_avail)

binom.test(353, 384, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)
binom.test(31, 384, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)

# overall hd flu availability

tabyl(analytic_sample, hdflu_avail)

binom.test(311, 384, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)

binom.test(73, 384, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)

# chain pharmacies

binom.test(16, 268, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)

# independent pharmacies

binom.test(57, 116, 
           0.5,
           alternative="two.sided",
           conf.level=0.95)

## Chi-square tests ----

# Pharmacy type vs. shingles availability

table(analytic_sample$pharmtype,
      analytic_sample$shing_avail)

chi_shing <- chisq.test(x = table(analytic_sample$pharmtype,
                                  analytic_sample$shing_avail))
chi_shing

# Pharmacy type and hd flu availability

table(analytic_sample$pharmtype,
      analytic_sample$hdflu_avail)

chi_hdflu <- chisq.test(x = table(analytic_sample$pharmtype,
                                        analytic_sample$hdflu_avail))
chi_hdflu

# Pharmacy type vs. flu availability

table(analytic_sample$pharmtype,
      analytic_sample$flu_avail)

chi_flu <- chisq.test(x = table(analytic_sample$pharmtype,
                                  analytic_sample$flu_avail))
chi_flu




### Logistic regression ----

logit_shing <- glm(shing_avail ~  pharmtype + total_pop + median_income + region + metro + pct_white, data = analytic_sample, family = "binomial")
summary(logit_shing)


logit_flu <- glm(flu_avail ~  pharmtype + total_pop + median_income + region + metro + pct_white, data = analytic_sample, family = "binomial")
summary(logit_flu)


logit_hdflu <- glm(shing_avail ~  pharmtype + total_pop + median_income + region + metro + pct_white, data = analytic_sample, family = "binomial")
summary(logit_hdflu)
