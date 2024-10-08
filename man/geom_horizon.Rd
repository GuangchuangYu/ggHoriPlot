% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_horizon.R, R/stat_horizon.R
\docType{data}
\name{geom_horizon}
\alias{geom_horizon}
\alias{GeomHorizon}
\alias{stat_horizon}
\title{Horizon plots}
\usage{
geom_horizon(
  mapping = NULL,
  data = NULL,
  position = "identity",
  ...,
  na.rm = FALSE,
  show.legend = TRUE,
  origin = "midpoint",
  horizonscale = 6,
  rm.outliers = FALSE,
  reverse = FALSE,
  mirror = FALSE,
  inherit.aes = TRUE
)

stat_horizon(
  mapping = NULL,
  data = NULL,
  geom = "ribbon",
  position = "identity",
  ...,
  na.rm = FALSE,
  show.legend = TRUE,
  inherit.aes = TRUE,
  origin = "midpoint",
  horizonscale = 6,
  rm.outliers = FALSE,
  reverse = FALSE,
  mirror = FALSE
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{aes()}}. If specified and
\code{inherit.aes = TRUE} (the default), it is combined with the default mapping
at the top level of the plot. You must supply \code{mapping} if there is no plot
mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{position}{A position adjustment to use on the data for this layer. This
can be used in various ways, including to prevent overplotting and
improving the display. The \code{position} argument accepts the following:
\itemize{
\item The result of calling a position function, such as \code{position_jitter()}.
This method allows for passing extra arguments to the position.
\item A string naming the position adjustment. To give the position as a
string, strip the function name of the \code{position_} prefix. For example,
to use \code{position_jitter()}, give the position as \code{"jitter"}.
\item For more information and other ways to specify the position, see the
\link[ggplot2:layer_positions]{layer position} documentation.
}}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}'s \code{params} argument. These
arguments broadly fall into one of 4 categories below. Notably, further
arguments to the \code{position} argument, or aesthetics that are required
can \emph{not} be passed through \code{...}. Unknown arguments that are not part
of the 4 categories below are ignored.
\itemize{
\item Static aesthetics that are not mapped to a scale, but are at a fixed
value and apply to the layer as a whole. For example, \code{colour = "red"}
or \code{linewidth = 3}. The geom's documentation has an \strong{Aesthetics}
section that lists the available options. The 'required' aesthetics
cannot be passed on to the \code{params}. Please note that while passing
unmapped aesthetics as vectors is technically possible, the order and
required length is not guaranteed to be parallel to the input data.
\item When constructing a layer using
a \verb{stat_*()} function, the \code{...} argument can be used to pass on
parameters to the \code{geom} part of the layer. An example of this is
\code{stat_density(geom = "area", outline.type = "both")}. The geom's
documentation lists which parameters it can accept.
\item Inversely, when constructing a layer using a
\verb{geom_*()} function, the \code{...} argument can be used to pass on parameters
to the \code{stat} part of the layer. An example of this is
\code{geom_area(stat = "density", adjust = 0.5)}. The stat's documentation
lists which parameters it can accept.
\item The \code{key_glyph} argument of \code{\link[ggplot2:layer]{layer()}} may also be passed on through
\code{...}. This can be one of the functions described as
\link[ggplot2:draw_key]{key glyphs}, to change the display of the layer in the legend.
}}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{origin}{Origin of the horizon plot. It can either be a string, namely
\code{"midpoint"} (the default), \code{"median"},
\code{"mean"}, \code{"min"} or \code{"quantiles"}, or a user-specified number.}

\item{horizonscale}{Cutpoints of the horizon plot. It can either be an integer
specifying the number of ranges (default is \code{6}),
or a user-supplied numeric vector with the cutpoints defining the different ranges.}

\item{rm.outliers}{If \code{TRUE}, all the values below \code{quantile(y, 0.25)-1.5*IQR(y)}
and above \code{quantile(y, 0.75)+1.5*IQR(y)} are excluded from the origin and cutpoint
calculations (default is \code{FALSE}). @param reverse If \code{TRUE}, the horizon peaks
for the values below the origin are reversed (default is \code{FALSE}).}

\item{reverse}{IF \code{TRUE}, the horizon peaks for all the values below the origin
are reversed (default is \code{FALSE}).}

\item{mirror}{If \code{TRUE}, the horizon peaks for all the values are reversed
(default is \code{FALSE}).}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[ggplot2:borders]{borders()}}.}

\item{geom}{Used geom, default to 'ribbon'}
}
\value{
'ggplot2' layer for building a horizon plot.
}
\description{
This function builds horizon plots in ggplot2. It allows for the
customization of the origin and the horizon scale.
}
\details{
A horizon plot is a special type of area plot in which the original data
is transformed based on an origin and a horizon scale. The data is cut in
different intervals, and the further the data is from the origin, the deeper
its color usually is. All the intervals above the origin are then stacked on
top of one another, keeping the intervals closest to the origin in the bottom
and the furthest away ones on top. Likewise, the intervals below the origin
are normally given a different color palette and they are stacked in a similar
manner in the same area as the intervals above the origin. You can learn more
about how horizon plots are built in \code{vignette('ggHoriPlot')} or at
\url{https://bernatgel.github.io/karyoploter_tutorial/Tutorial/PlotHorizon/PlotHorizon.html}.
}
\section{Orientation}{
 
This geom treats each axis differently and, thus, can thus have two orientations. Often the orientation is easy to deduce from a combination of the given mappings and the types of positional scales in use. Thus, ggplot2 will by default try to guess which orientation the layer should have. Under rare circumstances, the orientation is ambiguous and guessing may fail. In that case the orientation can be specified directly using the \code{orientation} parameter, which can be either \code{"x"} or \code{"y"}. The value gives the axis that the geom should run along, \code{"x"} being the default orientation you would expect for the geom.
}

\section{Aesthetics}{

\code{geom_horizon()} understands the following aesthetics (required aesthetics are in bold):
\itemize{
\item \strong{\code{x}}
\item \strong{\code{y}}
\item \code{xend}
\item \code{alpha}
\item \code{colour}
\item \code{fill}
}
}

\examples{
# Generate data
huron <- data.frame(year = 1875:1972, level = as.vector(LakeHuron))

# Basic plot with default colors
h <- ggplot(huron) + geom_horizon(aes(year, level))

# Add color scheme
h + theme_void() + scale_fill_hcl()

# Add cupoints
ggplot(huron) +
  geom_horizon(aes(year, level, fill = ..Cutpoints..)) +
  theme_void() +
  scale_fill_hcl()


}
\keyword{datasets}
