line = gets.split(' ')

count = line[0].to_i
rate = line[1].to_i

if 10 <= count
  ans = rate
else
  ans = rate + 100*(10 - count)
end

p ans
