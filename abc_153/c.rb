line = gets.split(' ')

monster_count = line[0].to_i
skill_count = line[1].to_i

monsters = gets.chop.split.map(&:to_i)


if monster_count <= skill_count
  return monster_count
end

monsters.sort!
monsters.slice!(0..skill_count)

count = 0
monsters.each {|monster| count += monster }

return (count + skill_count)
