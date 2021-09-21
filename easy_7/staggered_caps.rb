# PEDAC
# Input: String
# Output: NEW string with original string in staggered caps format
# Rules: Characters that are not letters aren't changed, but are counted as chars for the purposes of the back and forth switch.
# Start on a caps
# Data: Strings
# Algorithm: Create output string
# Create a boolean for caps that is true
# For each character in the input string, if caps, then add char.upcase to the output string
# Then turn caps false
# if not caps, then add char.downcase to the output string

def staggered_case(string_input)
  staggered = ''
  caps = true
  string_input.each_char do |char|
    if caps
      staggered << char.upcase
      caps = false
    else
      staggered << char.downcase
      caps = true
    end
  end
  staggered
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further exploration: Modify the method so the caller can specify whether the first will be upcase or downcase

puts "Do you want the first char to be upcase or downcase? (U for up, D for down)"
updown = gets.chomp.upcase

def staggered_case_2(string_input, updown)
  staggered = ''
  if updown == 'U'
    caps = true
  elsif updown == 'D'
    caps = false
  else
    puts "Incorrect case argument"
  end
  string_input.each_char do |char|
    if caps
      staggered << char.upcase
    else
      staggered << char.downcase
    end
    caps = !caps
  end
  staggered
end

p staggered_case_2('I Love Launch School!', updown)# == 'I LoVe lAuNcH ScHoOl!'
p staggered_case_2('ALL_CAPS', updown)# == 'AlL_CaPs'
p staggered_case_2('ignore 77 the 444 numbers', updown)# == 'IgNoRe 77 ThE 444 NuMbErS'

# Some student solutions determine whether to up or downcase via the odd or even-ness of the index, and then use a ternary operator.

# ==============================================================================
# Staggered Caps 2
# PEDAC:
# Input: String
# Output: String similar to previous method
# Rules: IGNORE non alphabetic characters (hold over case setting until reaching another alphabetic char)
# Data: String
# Algorithm: Take input string, create return string staggered
# Create a bool for case, start true
# Check if character =~ /[a-zA-Z]/
# If so, put the character into the return string with appropriate case and switch the case variable
# Else simply put the character into the return string and don't change the case variable

def staggered_case_3(string_input)
  staggered = ''
  caps = true
  string_input.each_char do |char|
    if char =~ /[a-zA-Z]/ # Alternatively the solution uses /[a-z]/i to indicate that case should be ignored
      if caps
        staggered << char.upcase
      else
        staggered << char.downcase
      end
      caps = !caps
    else
      staggered << char
    end
  end
  staggered
end

p staggered_case_3('I Love Launch School!')# == 'I LoVe lAuNcH ScHoOl!'
p staggered_case_3('ALL_CAPS')# == 'AlL_CaPs'
p staggered_case_3('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 NuMbErS'