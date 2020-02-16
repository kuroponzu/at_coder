_,target_num= gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)


c = []

start_time = Time.now


last_num = nums.length

nums.each.with_index do |v,i|
  j = 1
  while i+j < last_num
    c << v * nums[i+j]
    j += 1
  end
end

p c.sort![target_num - 1]
p "処理概要 #{Time.now - start_time}s"
