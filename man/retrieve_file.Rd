% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/retrieve_file.R
\name{retrieve_file}
\alias{retrieve_file}
\title{Retrieve file}
\usage{
retrieve_file(
  file_id,
  openai_api_key = Sys.getenv("OPENAI_API_KEY"),
  openai_organization = NULL
)
}
\arguments{
\item{file_id}{required; a length one character vector.}

\item{openai_api_key}{required; defaults to \code{Sys.getenv("OPENAI_API_KEY")}
(i.e., the value is retrieved from the \code{.Renviron} file); a length one
character vector. Specifies OpenAI API key.}

\item{openai_organization}{optional; defaults to \code{NULL}; a length one
character vector. Specifies OpenAI organization.}
}
\value{
Returns a list, elements of which contains information about the
file.
}
\description{
Provides information about a specific file. See \href{https://platform.openai.com/docs/api-reference/files/retrieve}{this page} for details.
}
\details{
For arguments description please refer to the \href{https://platform.openai.com/docs/api-reference/files/retrieve}{official documentation}.
}
\examples{
\dontrun{
file <- system.file("extdata", "classification-file.jsonl", package = "openai")
file_info <- upload_file(file = file, purpose = "classification")
retrieve_file(file_info$id)
}
}
\seealso{
Other file functions: 
\code{\link{delete_file}()},
\code{\link{list_files}()},
\code{\link{retrieve_file_content}()},
\code{\link{upload_file}()}
}
\concept{file functions}
