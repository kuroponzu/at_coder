first_arg = gets.split(' ').map(&:to_i)

waribiki_count = first_arg[2]

reizo = gets.split(' ').map(&:to_i)
rendi = gets.split(' ').map(&:to_i)
discounts = []

1.upto(waribiki_count) do |count|
  discount = gets.split(' ').map(&:to_i)
  discounts.push(discount)
end

min = reizo.min + rendi.min

discounts.each do |discount|
  prise = reizo[discount[0] - 1] + rendi[discount[1] - 1] - discount[2]
  min = prise if prise < min
end

puts min
