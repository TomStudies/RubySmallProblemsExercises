# PEDAC
# Input: String of time in 24 hour format
# Output: Integer num of mins before and after midnight, depending on which method is called
# Rules: Return value in range 0..1439, do not use Date or Time.
# Data: Integers and strings
# Algorithm:
# -after_midnight method takes one argument, stringtime
# -stringtime is split into an array of both values by the : delimeter. Array called hrs_mins
# -hrs_mins is iterated over, with each value converted to an integer, hrs and mins respectively.
# -The method returns (hrs % 24) * 60 + mins
# -before_midnight does largely the same thing, but returns 1440 minus that

MINS_IN_HOUR = 60
HOURS_IN_DAY = 24
MINS_IN_DAY = MINS_IN_HOUR * HOURS_IN_DAY


def str_to_ints(stringtime)
  hr_min_strings = stringtime.split(':')
  hr_min_strings.map { |str| str.to_i } #Solution used &:to_i in the map argument, not a block.
end

def after_midnight(stringtime)
  hrs_mins = str_to_ints(stringtime)
  (hrs_mins[0] % HOURS_IN_DAY) * MINS_IN_HOUR + hrs_mins[1]
end

def before_midnight(stringtime)
  hrs_mins = str_to_ints(stringtime)
  before_mid = MINS_IN_DAY - ((hrs_mins[0] % HOURS_IN_DAY) * MINS_IN_HOUR + hrs_mins[1])
  return 0 if before_mid == MINS_IN_DAY
  before_mid
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0