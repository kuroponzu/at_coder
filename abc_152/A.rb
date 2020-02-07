line = gets.split(' ')

ans = ""

if line[0].to_i == line[1].to_i
  ans = "Yes"
else
  ans = "No"
end

puts ans
