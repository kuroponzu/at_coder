_,target_num= gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)

c = []

c_num = nums.combination(2).to_a

c_num.each do |nums|
  c << nums[0].to_i * nums[1].to_i
end

p c.sort![target_num - 1]
