# helper functions for adding/manipulating entries

# specify date as month-day-year within the variety of formats lubridate will understand
addFuture <- function(date, content=NULL, bullet=NULL, entries=entries) {
  entries <- entries %>% add_row(date=mdy(date),
                                 month=months(date, abbreviate=TRUE),
                                 day=substr(weekdays(date), 1, 1),
                                 type="futurelog",
                                 content=content,
                                 bullet=bullet)
  assign("entries", entries, .GlobalEnv)
}
