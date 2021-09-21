# PEDAC
# Input: A string
# Output: A hash containing:
# A symbol lowercase corresponding to the number of lowercase letters (int)
# A symbol uppercase corresponding to the number of uppercase letters (int)
# A symbol neither corresponding to the number of other characters (int)
# Rules: Return 0s for any that have 0
# Data structures: String, int, hash
# Algorithm: Loop over each character of the string.
# If the character is contained with in a-z, increment lowercase.
# If the character is contained within A-Z, increment uppercase.
# If the character is not, increment other.
def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if ('a'..'z').include?(char)
      counts[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

p letter_case_count('abCdef 123')# == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef')#== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123')# == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('')# == { lowercase: 0, uppercase: 0, neither: 0 }

# Solution 1 used universal arrays for the upper and lower case methods (ex: UPPERCASE_CHARS = ('A'..'Z').to_a) and otherwise did the same thing
# Solution 2 used regex to figure it out, assigning each counts symbol to a count of an array of the chars, with regex characters.count { |char| char =~ /[a-z]/ } etc.
# 