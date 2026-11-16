# AI Assistance Declaration: I used ChatGPT by OpenAI on November 16, 2026,
# for documentation organization, code-comment clarity, and validation ideas.
# Exact prompts are recorded in AI_Prompts_Appendix.md. I independently
# inspected the formulas and file paths. All results are calculated by this R
# script when it is run. I am responsible for the accuracy and originality.

# Synthetic Study-Room Usage Analysis
# This script uses only synthetic data and base R.

input_path <- file.path("data", "synthetic_study_room_bookings.csv")
output_dir <- "outputs"

if (!file.exists(input_path)) {
  stop("Input file was not found: ", input_path)
}

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

bookings <- read.csv(input_path, stringsAsFactors = FALSE)

required_columns <- c(
  "booking_id", "booking_date", "time_slot", "room_type",
  "group_size", "duration_hours", "status"
)

missing_columns <- setdiff(required_columns, names(bookings))
if (length(missing_columns) > 0L) {
  stop("Missing required columns: ", paste(missing_columns, collapse = ", "))
}

if (anyDuplicated(bookings$booking_id) > 0L) {
  stop("booking_id values must be unique.")
}

bookings$booking_date <- as.Date(bookings$booking_date)
if (anyNA(bookings$booking_date)) {
  stop("One or more booking_date values are invalid.")
}

allowed_slots <- c("Morning", "Afternoon", "Evening")
allowed_rooms <- c("Small", "Medium", "Large")
allowed_status <- c("Completed", "Cancelled", "No-show")

if (any(!bookings$time_slot %in% allowed_slots)) {
  stop("time_slot contains an unsupported value.")
}
if (any(!bookings$room_type %in% allowed_rooms)) {
  stop("room_type contains an unsupported value.")
}
if (any(!bookings$status %in% allowed_status)) {
  stop("status contains an unsupported value.")
}
if (anyNA(bookings$group_size) || any(bookings$group_size <= 0)) {
  stop("group_size must contain positive values.")
}
if (anyNA(bookings$duration_hours) || any(bookings$duration_hours <= 0)) {
  stop("duration_hours must contain positive values.")
}

completed <- bookings[bookings$status == "Completed", ]
if (nrow(completed) == 0L) {
  stop("No completed bookings are available for analysis.")
}

completed$room_hours <- completed$duration_hours
completed$student_hours <- completed$group_size * completed$duration_hours

overall_summary <- data.frame(
  total_bookings = nrow(bookings),
  completed_bookings = nrow(completed),
  completion_rate = nrow(completed) / nrow(bookings),
  completed_room_hours = sum(completed$room_hours),
  completed_student_hours = sum(completed$student_hours)
)

room_type_summary <- aggregate(
  cbind(room_hours, student_hours) ~ room_type,
  data = completed,
  FUN = sum
)
room_type_summary$completed_bookings <- as.integer(table(completed$room_type)[room_type_summary$room_type])
room_type_summary <- room_type_summary[order(-room_type_summary$room_hours), ]

time_slot_summary <- aggregate(
  cbind(room_hours, student_hours) ~ time_slot,
  data = completed,
  FUN = sum
)
time_slot_summary$completed_bookings <- as.integer(table(completed$time_slot)[time_slot_summary$time_slot])
time_slot_summary <- time_slot_summary[order(-time_slot_summary$room_hours), ]

print(overall_summary)
print(room_type_summary)
print(time_slot_summary)

write.csv(
  room_type_summary,
  file.path(output_dir, "room_type_summary.csv"),
  row.names = FALSE
)
write.csv(
  time_slot_summary,
  file.path(output_dir, "time_slot_summary.csv"),
  row.names = FALSE
)

png(
  filename = file.path(output_dir, "completed_room_hours.png"),
  width = 1200,
  height = 800,
  res = 150
)
barplot(
  room_type_summary$room_hours,
  names.arg = room_type_summary$room_type,
  col = c("#1B4965", "#5FA8D3", "#62B6CB"),
  border = NA,
  main = "Completed Study-Room Hours by Room Type",
  xlab = "Room Type",
  ylab = "Completed Room-Hours"
)
dev.off()

message("Analysis completed. Generated files are in the outputs folder.")
