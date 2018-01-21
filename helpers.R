# helper functions for adding/manipulating entries

# specify date as month-day-year within the variety of formats lubridate will understand
addFuture <- function(date, content=NA, bullet=NA, data=entries) {
  entries <<- data %>% add_row(date=mdy(date),
                                 month=months(date, abbreviate=TRUE),
                                 day=substr(weekdays(date), 1, 1),
                                 type="futurelog",
                                 content=content,
                                 bullet=bullet)
}
