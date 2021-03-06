April 30th 2020
================
Tomas Okal
4/30/2020

# Notes

## Jim Savage Blog Post

### Log Likelihood

Log likelihood is useful as a tool to compare models. Extreme log
likelihoods that are penalized for extreme outliers hep guid to good
modeling where outcomes that do happen are given positive weight and
impossible outcomes are given no weight.

### Prior Distributions

Bayesian models will summarize information about the values of
parameters before ahead of time using information on values the
parameters may take. This is gleaned from previous studies,
restrictuions such as fixed costs, and scale of effects being generally
known.

#### Penalized Likelihood Estimation

Can be used to estimate the mode of the posterior. Works well in low
dimensions and simple models.

## Gelman, Simpson, Betancourt 2017

The prior distribution should come before the data model, but in
practice, priors are chosen with reference to a likelhood function. If
the prior is clearly defined, not just before the data are observed, but
before the experiement has ever been considered, then the prior
distribution is externally defined and can lead to an updated posterior
distribution. However, if the data and model are formed with unknown
parameters with a need to set up a prior distribution, then this could
be seen as subjective.

#### Types of Priors

  - An *ideal* prior will have all available information about the
    problem known before the measuremnt is even considered.

  - A *minimalist* prior will take data and a model of the measurement.
    In short, is basic prior needed to set up and run a model.

  - A *reference* prior which will serve as placeholder to set up the
    analysis. It is not intended to make sense on its own, but rather to
    yierld posterior inference.

  - A *structural* prio will encode mathematical properties such as
    symmetry that represent underlying features of a model. It is not
    ideal as it does not attempt to include all available information,
    but is not minimalist as it does inlcude information about
    underlying problem.

  - A *regularizing* prior will yield smoother inferences from the
    nature of its likelihood.

#### Example

A paper finds that there is a differnece in proportion of girl births
among more attractive parents. From this, we can create a model that has
two parameters. *p*: the average probability of girl births and *δ*: the
difference in probability of girl births. Given that the overall
probability of girl births is very well estimated from aggregate data,
we only have to concern with generating prior distribution of *δ*. Using
the paper, the prior would be uniform with a mean of 0.08 and standard
deviation of 0.033. However, any uniform prior distribution contradicts
the prior of human sex ratio. For a fully informative prior of *δ*, it
would make sense to choose a mean of 0 because there is no reason to
expect a difference. A resulting posterior distrubution of *δ* is then
normal with mean of 0.00007 and SD of 0.001.

The point of this example is that there is a problem with estimating the
parameter of *δ*. A uniform prior represents the statement that *δ* can
be large, which has consequences for the posterior distribution. A prior
distribution can only be interpreted in the context of the likelihood.
The product of any Bayesian inference is the posterior distribution that
filters the prior through the likelihood. However, this contradicts the
conceptual principle that the prior distribution should only convery
information that is available before the data has been collected.

The issue present in the above is that the true difference *δ* was small
and the data was “bad” at finding it. Randomness of data means that when
*δ* is small, *n* needs to be larger to avoid the natural variation in
the data from overwhelming the signal.
