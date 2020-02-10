num = gets.split(' ')

num_hash = {}
complex = []

p num[0]
p num[0].class

1.upto(num[0].to_i) do |n|
  p n
  p n.class
  complex[0] = n.digits[-1]
  complex[1] = n.digits[1]

  num_hash[complex] ||= +1
end

p num_hash
ans = 0
num_hash.map do |key, value|
  corres_num = []
  corres_num << key[1]
  corres_num << key[0]

  p corres_num
  p num_hash
  p num_hash[corres_num]
  ans += num_hash[corres_num]
end

puts ans


