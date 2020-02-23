count = gets.split(' ').map(&:to_i)[0]
nums = gets.split(' ').map(&:to_i)

sum = 0

nums.each do |num|
  sum += num
end

ave = (sum.to_f / count.to_f).round

ans = 0

nums.each do |num|
  ans += (ave - num) ** 2
end

p ans
