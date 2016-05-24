#Eric Bonilla
#COEN 164 Assignment 3
#5/8/16

#open the file and check each line to see if its first 7 chars are 'ADVISOR'
def print_lines(file_name)
  File.open(file_name).each_line {|line| puts "#{line}" if line[0..6] == 'ADVISOR'}
end
