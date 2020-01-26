line = gets.split(' ')

origin_monster = line[0].to_i

monsters = [origin_monster]

count = 0

while monsters[0] != 1
  add_monster = monsters[0]/2
  monsters << add_monster
  monsters << add_monster
  monsters.slice!(0)
  monsters.sort!.reverse!
  count += 1
end

puts (monsters.length + count)

