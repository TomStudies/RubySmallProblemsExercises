# PEDAC
# Input: A string of instructions for the stack language
# Output: Whatever the result is of the instruction set
# Rules: Assume the programs are correct and won't do something strange
# Define within one method (consider other methods for the operations)
# All are integer operations
# Data: Strings, integers, arrays
# Algorithm: Initialize the register to 0, and the stack to an empty array.
# Accept instructions as a string. Split it into an array of instructions.
# For each instruction in the array, compare it against a case statement.
# For each case, perform the operation described. If no operation described,
# convert the string to an int and assign to the register.
def minilang(instructions)
  register = 0
  stack = []
  individual_commands = instructions.split
  individual_commands.each do |command|
    case command
    when 'PUSH'
      stack.push(register)
    when 'ADD'
      register = register + stack.pop # Solution uses when x then y on one line
    when 'SUB'
      register = register - stack.pop
    when 'MULT'
      register = register * stack.pop
    when 'DIV'
      register = register / stack.pop
    when 'MOD'
      register = register % stack.pop
    when 'POP'
      register = stack.pop
    when 'PRINT'
      puts register
    else
      register = command.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)


# Further exploration: Write the code for (3 + (4 * 5) - 7) / (5 % 3)
minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')

# Further exploration: Add error handling: Detect empty stack conditions
# and invalid tokens. Return an error message if found.
TOKENS = ['PUSH', 'ADD', 'SUB', 'MULT', 'DIV', 'MOD', 'POP', 'PRINT']

def minilang_2(instructions)
  register = 0
  stack = []
  individual_commands = instructions.split
  individual_commands.each do |command|
    if TOKENS.include?(command) || (command.to_i!= 0 || command == '0')
      case command
      when 'PUSH'
        stack.push(register)
      when 'ADD'
        return "STACK EMPTY ERROR" if stack.size == 0
        register = register + stack.pop # Solution uses when x then y on one line
      when 'SUB'
        return "STACK EMPTY ERROR" if stack.size == 0
        register = register - stack.pop
      when 'MULT'
        return "STACK EMPTY ERROR" if stack.size == 0
        register = register * stack.pop
      when 'DIV'
        return "STACK EMPTY ERROR" if stack.size == 0
        register = register / stack.pop
      when 'MOD'
        return "STACK EMPTY ERROR" if stack.size == 0
        register = register % stack.pop
      when 'POP'
        return "STACK EMPTY ERROR" if stack.size == 0
        register = stack.pop
      when 'PRINT'
        puts register
      else
        register = command.to_i
      end
    else
      return "INVALID TOKEN ERROR"
    end
  end
  nil
end

p minilang_2('SLOP')
p minilang_2('7 SUB SUB')