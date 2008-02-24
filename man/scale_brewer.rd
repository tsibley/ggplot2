\name{ScaleBrewer}
\alias{scale_brewer}
\alias{ScaleBrewer}
\alias{scale_colour_brewer}
\alias{scale_fill_brewer}
\title{scale_brewer}
\description{Colour brewer colour scales}
\details{
See <a href='http://colorbrewer.org'>colorbrewer.org</a> for more info

This page describes \code{\link{scale_brewer}}, see \code{\link{layer}} and \code{\link{qplot}} for how to create a complete plot from individual components.
}
\usage{scale_brewer(...)}
\arguments{
 \item{...}{ignored }
}
\seealso{\itemize{
  \item \url{http://had.co.nz/ggplot/scale_brewer.html}
}}
\value{A \code{\link{layer}}}
\examples{\dontrun{
    (d <- qplot(carat, price, data=diamonds, colour=clarity))
    
    # Change scale label
    d + scale_colour_brewer()
    d + scale_colour_brewer("clarity")
    d + scale_colour_brewer(expression(clarity[beta]))

    # Select brewer palette to use, see ?brewer.pal for more details
    d + scale_colour_brewer(type="seq")
    d + scale_colour_brewer(type="seq", palette=3)

    display.brewer.all(n=8, exact.n=FALSE)

    d + scale_colour_brewer(palette="Blues")
    d + scale_colour_brewer(palette="Set1")
    
    # One way to deal with overplotting - use transparency
    # (only works with pdf, quartz and cairo devices)
    d + scale_colour_brewer(alpha = 0.2)
    d + scale_colour_brewer(alpha = 0.01)
  
    # scale_fill_brewer works just the same as 
    # scale_colour_brewer but for fill colours
    ggplot(diamonds, aes(x=price, fill=cut)) + 
      geom_bar(position="dodge") + 
      scale_fill_brewer()
    
}}
\author{Hadley Wickham, \url{http://had.co.nz/}}
\keyword{hplot}