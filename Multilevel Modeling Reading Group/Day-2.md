April 9th 2020
================
Tomas Okal
4/9/2020

# Notes

## Kropko and Kubinec 2018

Two-way FEs allow for control of both unobserved case factors and
unobserved time factors. In this way, cna be seen as a form of control
that can exclude unmeasured covariates from both case and time.

### One-way FE steps

  - Consider observations for one case with all variation existing over
    time.
  - Regress y on x using this subset of data and recode the coefficient
    beta.
  - Calculate variance of values of x for this case and record the
    product.
  - Repeat steps 1, 2, and 3 for every case.
  - Calculate the case FE coefficient by taking average of every
    case-specific coefficient beta weighted by the product from step 3.

From this, a case FE coefficient represents the average effect of a unit
increase in x on y as each variable changes over time, generalized to
all cases. Similarly, within one time point in the data, all variation
is cross-sectional, so a time FE coefficient must be interpreted as the
average effect of a unit-increase in x on y as each variable changes
from case to case at this specific point in time. In other words, time
FE coefficient represent the average effect of a unit-increase in x on y
as each variable changes from case to case, generalized to all time
points.

#### Example

Case FE would be looking at how a one unit increase in GDP would impact
democracy in a country over time.

Time FE would be looking at how much more democratic wealthier countries
are than poorer countries in a given time point.

### Two-way FE models

A guide to this is provided using GDP and Democracy. We take the
untransformed data and subract the mean-centered country-specific means
from both democracy and GDP. This provides us coefficients for a case FE
model. We then subset the data by year providing us t panels each with
an entry for beta t. The two-way FE coefficient is an average of these
slopes weighted by data in each scatterplot times variance of x in each
plot.

In a given time point, a case with higher or lower values over its own
over-time mean x than another case with a lower or higher value over its
own over-time mean x, will then have a y value that is farther below or
above that of the other cases’s y over-time mean y. This is all relative
to each case’s over-time mean of both x and y.

### Concerns about Two-way FE models

By including time dummies in addition to case dummies, because the model
once again becomes dependent on both cross-sectional and temporal
variation.

One-way FE models address omitted variables because they isolate one
dimension of variance in the data. In other words, a case FE model only
analyzes temporal variation and then time FE model only analyzes
cross-sectional variation. A Two-way FE model does not isolate either
case or time variance, but rather averages across the two dimensions.
Two-way FE models are a generalization of the effect of deviations from
the time-means for each particular case, an interpretation probably
different from what you want.

## Hox 2010

Hierarchical structures are often presented as clear (students within
classrooms within neighborhoods within schools), but can often be less
clear upon further review. For example, some students will attend
schools in other neighborhoods than the ones they live in and schools
can draw from the same neighborhoods. Unambigous hierarchy is sometimes
not possible. This is a cross-classified data structure where some
levels will cross with one another. This cross-classification can occur
at any level.

# Reading discussion

Six basic options for multilevel models

  - Classical linear regression model with fixed effects within the
    model.
  - Fixed effects model that has fixed effects within the model.
    (Inefficient).
  - Random effects model with fixed and random effects within the model.
    (Do not use).
  - Group means centered model with fixed and random effects within the
    model. (Probably want to use).
  - Random slopes model with fixed and random effects within the model.
    (Probably want to use).
  - Cross-classified model.

If you had random assignment, then the random assignment is not
correlated with any variables. With observational data, this is a big
assumption. Thus, the classical random effects model is unlikely to be
useful.

LME4 with R can use notation of `{r} (1|A) + (1|A:B)` will automatically
run regardless of whether or not A is explicitly nested within B.
Therefore, this can handle cross-classified structures.

Mundlak device (group means centered model) does not necessarily fix
causality and requires a correctly specified model. Difference in
difference model properly classified will address causality, but so will
correctly specified multilevel models.
