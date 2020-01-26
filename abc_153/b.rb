line = gets.split(' ')

monster = line[0].to_i

skill_list = gets.chop.split.map(&:to_i)

sum = 0

skill_list.each {|skill| sum += skill }

if monster <= sum
  puts "Yes"
else
  puts "No"
end
