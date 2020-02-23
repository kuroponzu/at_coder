kinds, bad_a, bad_b = gets.split(' ').map(&:to_i)
array1 = [*1..(bad_a - 1)]
array2 = [*(bad_a + 1)..(bad_b - 1)]
array3 = [*(bad_b + 1)..kinds]

array = array1.push(array2).push(array3).flatten!

ans = 0
hash = {}

array.each do |num|
  num = kinds - num if 2 * num >= kinds
  if num == 0
    ans += 1
  elsif hash.has_key?(num)
    ans += hash[num]
  else
    hash[num] = ((kinds - num + 1)..kinds).reduce(&:*) / ((1..num).reduce(&:*))
    ans += hash[num]
  end
end

p ans % (10 ** 9 + 7)
