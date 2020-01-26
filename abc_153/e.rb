line = readlines
len = line.length
i = 0

while i < len
  line[i] = line[i].chomp.split(' ')
  i += 1
end

monster = line[0][0]
magic_count = line[0][1]
