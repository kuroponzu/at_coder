line = readlines
numlines = line[1]

nums = numlines.split(' ')

ans = 1

if nums.length == 1
else
  min = nums[0].to_i
  nums.each do |num|
    if num.to_i < min
      ans += 1
      min = num.to_i
    end
  end
end

puts ans
