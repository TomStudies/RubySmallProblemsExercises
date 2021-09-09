require 'date'

# PEDAC
# Input: Integer number of minutes before or after midnight
# Output: String indicating the time
# Rules: Can loop over multiple days, may not use Date and Time classes, disregard DST and other stuff.
# Data: Integer, string
# Algorithm: time_of_day method takes int total_mins.
# Check if total_mins == 0, if so return 00:00.
# Hours is total_mins / 60, Mins is total_mins % 60.
# Do spaceship operator on total_mins.
# For positive total_mins, return string with Hours % 24, mins.
# For negative total_mins, return string with (24 - Hours) % 24 and 60 - mins
def time_of_day(total_mins)
  return "00:00" if total_mins == 0
  hours = (total_mins / 60).abs
  mins = (total_mins % 60).abs # Could have used divmod
  if total_mins > 0
    format_time_string((hours % 24), mins)
  elsif total_mins < 0
    format_time_string(((24 - hours) % 24), mins)
  end
end

def format_time_string(hours, minutes) # Could have used Kernel#format instead of this big block
  time = ":"
  if hours < 10
    time.prepend("0#{hours}")
  else
    time.prepend(hours.to_s)
  end
  if minutes < 10
    time.concat("0#{minutes}")
  else
    time.concat(minutes.to_s)
  end
  time
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# Further Exploration
# 1: Write a single calculation with % that performs the entire normalization operation on one line of code.
# I cannot figure this one out.
# 2: How would you approach this problem using Ruby's Date and Time classes?
def time_of_day2(mins)
  clock = Time.new(2000)
  clock = clock + (mins * 60)
  clock.strftime("%H:%M")
end
p time_of_day2(0) == "00:00"
p time_of_day2(-3) == "23:57"
p time_of_day2(35) == "00:35"
p time_of_day2(-1437) == "00:03"
p time_of_day2(3000) == "02:00"
p time_of_day2(800) == "13:20"
p time_of_day2(-4231) == "01:29"

def time_of_day3(mins)
  day = Date.new(2000,1,1)
  day = day + (mins.to_f / 1440)
  day.strftime("%H:%M")
end
p time_of_day3(0) == "00:00"
p time_of_day3(-3) == "23:57"
p time_of_day3(35) == "00:35"
p time_of_day3(-1437) == "00:03"
p time_of_day3(3000) == "02:00"
p time_of_day3(800) == "13:20"
p time_of_day3(-4231) == "01:29"
# 3: How would you a[[roach this problem with the Date and Time classes, assuming the day of the week?
# -Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday.
def time_of_day4(mins)
  clock = Time.new(2021,9,5)
  clock = clock + (mins * 60)
  clock.strftime("%A %H:%M")
end
def time_of_day5(mins)
  day = Date.new(2021,9,5)
  day = day + (mins.to_f / 1440)
  day.strftime("%A %H:%M")
end

p time_of_day4(0)
p time_of_day4(-3)
p time_of_day4(35)
p time_of_day4(-1437)
p time_of_day4(3000)
p time_of_day4(800)
p time_of_day4(-4231)
p time_of_day5(0)
p time_of_day5(-3)
p time_of_day5(35)
p time_of_day5(-1437)
p time_of_day5(3000)
p time_of_day5(800)
p time_of_day5(-4231)