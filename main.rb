require_relative("puzzle")

# puts "Enter file"
# file_name = gets.chomp
# puts "Enter puzzle size"
# size = gets.to_i

a = []

fd = File.open ("words.txt")
while ! fd.eof?
  words =  fd.gets.chomp.upcase.gsub(/\s/,'')
  a << words
end
fd.close

a = a.sort_by{ |x| x.length }

words = a.reverse

size = 45

puzz = Puzzle.new(size, words)

 a=puzz.create

def print_puzz(array_print)
array_print.each do |row|
  puts row.join(" ")
end
  puts
end

print_puzz(a)

# row=17
# while row < puzz.length
#   col = 0
#   while col < puzz[row].length
#     if puzz[row][col] == ''
#       f_row = row
#       f_col = col
#     end
#     col += 1
#   end
#   row += 1
# end

#puts puzz.create.reverse!

# north = a[f_row - 1][f_col]
# northeast =a[f_row + 1][f_col + 1]
# northwest =a[f_row + 1][f_col + 1]
# south = a[f_row + 1][f_col]
# southeast =a[f_row - 1][f_col + 1]
# southwest = a[f_row - 1][f_col - 1]
# west = a[f_row][f_col - 1]
# east = a[f_row][f_col + 1]
#
# puts north