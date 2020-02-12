_, choice_count = gets.chomp.split.map(&:to_i)
dices = gets.chomp.split.map(&:to_i)

probabilities = []

c_sum = [0]

dices.each.with_index do |dice,i|
  probabilities << (1 + dice.to_f)/2
  c_sum[i+1] = c_sum[i] + probabilities[i]

end

v_sum = 0

0.upto(dices.length - choice_count) do |i|
  sum = c_sum[i + choice_count] - c_sum[i]
  v_sum = sum if sum > v_sum
end

p v_sum.to_f
