\name{GeomVline}
\alias{geom_vline}
\alias{GeomVline}
\title{geom_vline}
\description{Line, vertical}
\details{
This geom allows you to annotate the plot with vertical lines (see \code{\link{geom_hline}} and \code{\link{geom_abline}} for other types of lines)


There are two ways to use it.  You can either specify the intercept of the line in the call to the geom, in which case the line will be in the same position in every panel.  Alternatively, you can supply a different intercept for each panel using a data.frame.  See the examples for the differences

This page describes \code{\link{geom_vline}}, see \code{\link{layer}} and \code{\link{qplot}} for how to create a complete plot from individual components.
}
\section{Aesthetics}{
The following aesthetics can be used with geom_vline.  Aesthetics are mapped to variables in the data with the \code{\link{aes}} function: \code{geom_vline(\code{\link{aes}}(x = var))}
\itemize{
  \item \code{colour}: border colour 
  \item \code{size}: size 
  \item \code{linetype}: line type 
  \item \code{intercept}: x/y intercept 
}
}
\usage{geom_vline(mapping=NULL, data=NULL, stat="identity", position="identity", ...)}
\arguments{
 \item{mapping}{mapping between variables and aesthetics generated by aes}
 \item{data}{dataset used in this layer, if not specified uses plot dataset}
 \item{stat}{statistic used by this layer}
 \item{position}{position adjustment used by this layer}
 \item{...}{ignored }
}
\seealso{\itemize{
  \item \code{\link{geom_hline}}: for horizontal lines
  \item \code{\link{geom_abline}}: for lines defined by a slope and intercept
  \item \code{\link{geom_segment}}: for a more general approach
  \item \url{http://had.co.nz/ggplot/geom_vline.html}
}}
\value{A \code{\link{layer}}}
\examples{\dontrun{
    # Fixed lines
    p <- ggplot(mtcars, aes(x = wt, y=mpg)) + geom_point()
    p + geom_vline(intercept=5)
    p + geom_vline(intercept=2:5)
    p + geom_vline(intercept=2:5, colour="green")
    p + geom_vline(intercept=mean(mtcars$wt), size=2)
    
    # Lines from data
    p <- ggplot(mtcars, aes(x = wt, y=mpg)) + facet_grid(. ~ cyl) + geom_point()
    p + geom_vline(intercept="mean")
}}
\author{Hadley Wickham, \url{http://had.co.nz/}}
\keyword{hplot}
