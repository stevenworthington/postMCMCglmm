\name{fixef.MCMCglmm}
\alias{fixef.MCMCglmm}
\title{Extract fixed effects from an \code{MCMCglmm} object}
\usage{
  \method{fixef}{MCMCglmm} (object, use = c("all", "mean"),
    ...)
}
\arguments{
  \item{object}{An \code{MCMCglmm} model object to extract
  the effects from}

  \item{use}{A character string indicating whether to
  extract all posterior samples or the mean of the
  posteriors. Defaults to "all".}

  \item{\dots}{Arguments passed on to the worker function.}
}
\value{
  A matrix of the fixed effects
}
\description{
  Function designed to extract the fixed effects from an
  \code{MCMCglmm} model object. Can either extract all
  samples from the fixed effects posteriors or return the
  posterior means.
}
\examples{
\dontrun{
  # a simple MCMCglmm model
  data(PlodiaPO)
  m <- MCMCglmm(PO ~ 1, random= ~ FSfamily, data=PlodiaPO, verbose=FALSE)

  # only extract average fixed effects
  fixef(m, use = "mean")

  # histogram of posterior samples of fixed effects
  hist(fixef(m))
  # matches the mean
  rowMeans(fixef(m))
}
}
\seealso{
  \code{\link{ranef.MCMCglmm}}
}

