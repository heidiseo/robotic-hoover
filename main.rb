input = []
IO.foreach('input.txt') do |line|
  input << line.delete!("\n")
end

x = input[0].split[0].to_i
y = input[0].split[1].to_i
grid = Array.new(y) { Array.new(x, 0) }

current_x = input[1].split[0].to_i
current_y = input[1].split[1].to_i

dirts = input[2...-1]
dirts.each do |dirt|
  dirt_x = dirt.split[0].to_i
  dirt_y = dirt.split[1].to_i
  grid[dirt_x][dirt_y] = 1
end

directions = input.last.split('')
counter = 0
directions.each do |direction|
  if grid[current_x][current_y] == 1
    counter += 1
    grid[current_x][current_y] = 0
  end
  if direction == 'N' && current_y < y - 1
    current_y += 1
  elsif direction == 'E' && current_x < x - 1
    current_x += 1
  elsif direction == 'S' && current_y > 0
    current_y -= 1
  else direction == 'W' && current_x > 0
    current_x -= 1
  end
  if grid[current_x][current_y] == 1
    counter += 1
    grid[current_x][current_y] = 0
  end
end
print "#{current_x} #{current_y}\n"
print "#{counter}\n"
