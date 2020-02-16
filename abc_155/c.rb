poll_number = gets.chomp.split.map(&:to_i)

polls = []

1.upto(poll_number[0]) do
  polls << gets.chomp.split[0]
end

poll_hash = Hash.new{0}

polls.each do |poll|
  poll_hash[poll] += 1
end

max_value = poll_hash.max{ |x, y| x[1] <=> y[1] }[1]

ans =[]

poll_hash.each do |k,v|
  ans << k if v == max_value
end

puts ans.sort
