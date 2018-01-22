# helper functions for adding/manipulating entries

# create a function for tomorrow, much like lubridate's today()
tomorrow <- function() {today()+1}

# create generic entry-adding function
# specify date as year-month-day within the variety of formats lubridate will understand
# note that function expects a global data frame named "entries"
addEntry <- function(date, content=NA, bullet=NA, data=entries, type=NA) {
  entries <<- data %>% add_row(date=ymd(date),
                               month=months(date, abbreviate=TRUE),
                               day=weekdays(date, abbreviate=TRUE),
                               type=type,
                               content=content,
                               bullet=bullet)
}

# add entries to future log
addFuture <- function(date, content=NA, bullet=NA, data=entries, type) {
  addEntry(date, content, bullet, data, type="futurelog")
}
# add entries to monthly log
addMonthly <- function(date, content=NA, bullet=NA, data=entries, type) {
  addEntry(date, content, bullet, data, type="monthlylog")
}
# add entries to daily log
addDaily <- function(date, content=NA, bullet=NA, data=entries, type) {
  addEntry(date, content, bullet, data, type="dailylog")
}

