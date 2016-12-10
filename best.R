best <- function(state, outcome) {
  ##Read the data
  outcomes <- read.csv(file=file.path("~/Data", "outcome-of-care-measures.csv"))
  x <- switch(outcome,
         "heart attack" = 11,
         "heart failure" = 17,
         "Pneumonia" = 23,
         0
         )
  if(x==0)print("outcome not valid")
  bystate <- outcomes[outcomes$State == state]
  ##print(summary(bystate))
  ##facility <- bystate[[state]]
  bystate
}