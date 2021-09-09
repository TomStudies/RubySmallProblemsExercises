# PEDAC
# Input: Short line of text
# Output: The line of text printed within a box
# Rules: Box must follow this format, and will always fit in the terminal window
# -One space character on all sides (top, bottom, sides)
# -Plus for the corners
# -Minus for the bottom and top rows
# -Vertical lines for the sides
# Data: Strings
# Algorithm: method print_in_box takes argument message
# print_in_box assigns message.length + 2 to variable width
# print_in_box prints a plus, width minuses, another plus, and a newline. ** Decided to make new method for this
# print_in_box prints a vertical line, width spaces, a vertical line, and a newline. ** Decided to make new method for this
# print_in_box prints a vertical line, a space, message, a space, then a vertical line, and finally a newline.
# print_in_box prints a vertical line, width spaces, a vertical line, and a newline. ** Decided to make new method for this.
# print_in_box prints a plus, width minuses, another plus, and a newline. ** Decided to make new method for this.

MAX_TERMINAL_WIDTH = 80

def horizontal_edge(width)
  puts "+#{'-' * width}+"
end

def vertical_edge(width)
  puts "|#{' ' * width}|"
end

def print_in_box_small(message) #Adjusted for the purposes of the further exploration challenge
  width = message.length + 2
  horizontal_edge(width)
  vertical_edge(width)
  puts "| #{message} |"
  vertical_edge(width)
  horizontal_edge(width)
end

print_in_box_small("Original small box")

# Further Exploration:
# Modify the message to wrap long messages so they appear on multiple lines,
# but still within a box.

def center_line(line)
  if line.length > MAX_TERMINAL_WIDTH - 4
    line = "String must have spaces throughout for this program to function."
  end
  remaining_space = MAX_TERMINAL_WIDTH - 4 - line.length
  left_adjustment = remaining_space / 2
  right_adjustment = remaining_space - left_adjustment
  puts "| #{' ' * left_adjustment}#{line}#{' ' * right_adjustment} |"
end

def print_in_box_2(message)
  if message.length > MAX_TERMINAL_WIDTH - 4
    horizontal_edge(MAX_TERMINAL_WIDTH - 2)
    vertical_edge(MAX_TERMINAL_WIDTH - 2)
    loop do
      examination_index = MAX_TERMINAL_WIDTH - 4
      loop do
        if message[examination_index] == ' '
          substring = message[0..(examination_index - 1)]
          center_line(substring)
          message.delete_prefix!(substring + ' ')
          break
        end
        examination_index -= 1
        break if examination_index == 0
      end
      break if examination_index == 0
      break if message.length < MAX_TERMINAL_WIDTH - 4
    end
    center_line(message)
    vertical_edge(MAX_TERMINAL_WIDTH - 2)
    horizontal_edge(MAX_TERMINAL_WIDTH - 2)
  else
    print_in_box_small(message)
  end
end

print_in_box_2("I just watched the Sopranos. It was a fairly interesting show, I really liked the ending but I know some people are pretty down on the whole thing. Anyway, have a nice day!")
print_in_box_2("alksfjelkajflkadjsflkejw;fadksfjelaw;jfa;dsjflkawjelfkjaseflkafjlksfjkalefjlkdjsflkejlkfajdlksfjelkjflkadjsflkeawjfa")
print_in_box_2("myfavoritewordisabiglongonewithoutanyspacesuntilireachexactlyseventysixchars howaboutanotheronedownherethatalsohasseventyfivchars,howoddwouldthatbehuh!?")
print_in_box_2(" Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself.")