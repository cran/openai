% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_search.R
\name{create_search}
\alias{create_search}
\title{Create search}
\usage{
create_search(
  engine_id = c("ada", "babbage", "curie", "davinci"),
  query,
  documents = NULL,
  file = NULL,
  max_rerank = 200,
  return_metadata = FALSE,
  user = NULL,
  openai_api_key = Sys.getenv("OPENAI_API_KEY"),
  openai_organization = NULL
)
}
\arguments{
\item{engine_id}{required; defaults to \code{"ada"}; a length one character
vector, one among \code{"ada"}, \code{"babbage"}, \code{"curie"}, and \code{"davinci"}.}

\item{query}{required; length one character vector.}

\item{documents}{optional; defaults to \code{NULL}; an arbitrary length character
vector.}

\item{file}{optional; defaults to \code{NULL}; a length one character vector.}

\item{max_rerank}{required; defaults to \code{200}; a length one numeric vector
with the integer value greater than \code{0}.}

\item{return_metadata}{required; defaults to \code{FALSE}; a length one logical
vector.}

\item{user}{optional; defaults to \code{NULL}; a length one character vector.}

\item{openai_api_key}{required; defaults to \code{Sys.getenv("OPENAI_API_KEY")}
(i.e., the value is retrieved from the \code{.Renviron} file); a length one
character vector. Specifies OpenAI API key.}

\item{openai_organization}{optional; defaults to \code{NULL}; a length one
character vector. Specifies OpenAI organization.}
}
\value{
Returns a list, elements of which contain score of each document and
supplementary information.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

\strong{Note:} This endpoint is deprecated and will be removed on December 3,
2022. Please see \href{https://help.openai.com/en/articles/6272952-search-transition-guide}{Search Transition Guide}
for details.

Computes similarity scores between the query and provided documents. See
\href{https://beta.openai.com/docs/api-reference/searches/create}{this page} for
details.
}
\details{
For arguments description please refer to the \href{https://beta.openai.com/docs/api-reference/searches/create}{official documentation}.
}
\examples{
\dontrun{
create_search(
    documents = c("White House", "hospital", "school"),
    query = "the president"
)
}
}
