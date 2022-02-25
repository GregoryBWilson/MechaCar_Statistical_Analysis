# MechaCar Statistical Analysis



## Linear Regression to Predict MPG

✓The csv file is imported and read into a dataframe. 

```R
MechCar_MPG <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)
```

✓An RScript is written for a linear regression model to be performed on ALL SIX variables. 

```R
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechCar_MPG)
```

✓An RScript is written to create the statistical summary of the linear regression model with the intended p-values. 

```R
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechCar_MPG))
```

✓The summary addresses all THREE questions.

Below is the output of the summary of the linear regression model.

```R
Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechCar_MPG)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

```

The t-values quantify the difference between the population means and the corresponding p-values of each coefficient ( i.e. "Pr(>|t|)" ) is the probability of obtaining a t-value with an absolute value at least as large as the one observed in the sample data if the null hypothesis is actually true.

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  We need to determine if we can reject the Null Hypothesis in favour of the Alternate Hypothesis.

  **Null Hypothesis H<sub>0</sub>:** μ1 = μ2 (the variable has no apparent affect on the outcome)

  **Alternate Hypotheses H<sub>a</sub>:** μ1 ≠ μ2 (the variable has sufficient evidence of an affect on the outcome)

  It the test above the following variables/coefficients by virtual of their p-value exceeding 0.05 that we fail to reject the null hypothesis.

  ***vehicle_length***

  ***spoiler_angle***

  ***AWD*** 

- Is the slope of the linear model considered to be zero? Why or why not?

  To answer this question, linear regression tests the following hypotheses:

  **Null Hypothesis H<sub>0</sub>:**  The slope of the linear model is zero, or m = 0

  **Alternate Hypotheses H<sub>a</sub>:**  The slope of the linear model is not zero, or m ≠ 0

  If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of 0.

  The r-squared (r<sup>2</sup>) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points. In most cases, the r-squared value will range between 0 and 1 and can be used as a probability metric to determine the likelihood that future data points will fit the linear model.

  With a significant r-squared (adjusted) value of 0.6825 their is evidence that the slope is non-zero, this is further supported by the fact the a p-value of 5.35e<sup>-11</sup> is essentially zero indicating that this correlation is not likely to be by chance.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  Continuing with the discussion above the adjusted r-squared being a modified version of r-squared is adjusted for the number of predictors in the model. The adjusted r-squared increases when the new term improves the model more than would be expected by chance. It decreases when a predictor improves the model by less than expected.  While the model does a reasonably good job of predicting mpg, there is evidence of overfitting - the model could actually be improved by removing the vehicle_length and ground_clearance variables.

## Summary Statistics on Suspension Coils

✓The csv file is imported and read into a dataframe. 

✓The total summary dataframe has ALL FOUR metrics for all the manufacturing lots. 

✓The lot summary dataframe has ALL FOUR metrics for each manufacturing lot. 

✓The summary addresses the design specification requirement for all the manufacturing lots and ALL THREE lots.

## T-Tests on Suspension Coils

✓An RScript is written for a t-test that compares all manufacturing lots against the mean PSI of the population. 

✓An RScript is written for ALL THREE t-tests that compare each manufacturing lot against the mean PSI of the population. 

✓The summary addresses the results across all manufacturing lots and ALL THREE lots.

## Study Design: MechaCar vs Competition

The statistical study design has the following: 

✓A metric to be tested is mentioned. 

✓A null or alternative hypothesis is described. 

✓A statistical test is well described to test the hypothesis. 

✓The data for the statistical test is well described.



