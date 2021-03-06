% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gmqn_SWAN.R
\name{gmqn_swan}
\alias{gmqn_swan}
\title{GMQN + SWAN}
\usage{
gmqn_swan(m, um, probe, type = "450k", ref = "default",
  verbose = TRUE)
}
\arguments{
\item{m}{The vector of methylation signal intensities.}

\item{um}{The vector of umethylation signal intensities.}

\item{probe}{the probe id for m and um.}

\item{type}{The type of methylation array which can be '450k'(default) or '850k'}

\item{ref}{The reference used to normalize data. By default, it uses the reference set up from GSE105018 which is also used in EWAS Datahub.}
}
\value{
A data frame contains normalized m and um, p value, and DNA methylation level
}
\description{
Using SWAN to conduct between array normalization and using BMIQ to conduct within array normalization. We slightly modified swan function in minfi package. When the signal value is less than 0, we make it equal to the non-zero minimum value not the background signal intensity.
}
