April 16th 2020
================
Tomas Okal
4/16/2020

# Notes

## Hodges and Clayton 2011

There is a discrepency between the original definition of a random
effect and its current implementation in analytics.

A traditional definition of a random effect is that the levels of a
random effect (level 1) are draws from a population, but not necessarily
of interest by themeselves. Instead the larger population is of
interest.

In other words, the levels (subjects) are a sample (not necessarily
random) and not interesting individually, but rather as members of
population they are drawn from and the object of random effects is the
measure the average difference in that population between the higher
levels (methods and locations).

Newer random effects have three varieties:

  - The levels of the effect are not draws from a population because
    there is no population.
      - The mathematical form of the random effect is used for
        convenience only.
  - The levels of the effect come from a meaningful population because
    they are the whole population and are of interest.
      - Spatially corellated random effects such as municipalities do
        not meet traditional definitions of a random effect because they
        are the entire population and are themselves of interest.
  - A sample is drawn and modeled, but a new draw could not be made.
      - An example of geostatistics is given. In this example, there is
        a sample of locations at which mineral measurement is taken. The
        sample locations are the random effect and not of interest
        themselvs but for what they say about the region as a whole.
        However, another draw of sample locations will not involve a new
        draw of random effects. Rather, the region mineral content is
        fixed but unkonwn and has been observed.

Commments

  - Thinking of random effects as random draws is tired as the single
    draw you take is of interest and estimating it is the entire point
    of the analysis in many cases.
  - Random effects as an analytical tool can be better suited in
    yielding estimates than in characterizing the stochastic process
    that produced the actual phenomenon.
  - Random effects can be a formal device for implementing smoothing or
    shrinkage.
  - The error in random effect is nothing more than local lack of fit.

# Gelman 2004

Fixed vs. Random effects is a discussion that has many different
definitions. Instead, define the effects (think coefficients) in a
multilevel model as constant is they are identical for all gropus in a
population and varying if they are allowed to differ from group to
group. If a model specifies a group effect only for the constant is
different than if the beta term also has a group effect.

# Reading discussion

Gelman 2004
