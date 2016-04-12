# Homework, page 35

max_drawn_value = 10
drawn_value = rand(max_drawn_value)

puts 'Type your choice'

while true
  typed_value = gets.chomp.to_i

  if drawn_value == typed_value
    puts 'Success'
    break
  end

  if drawn_value > typed_value
    puts 'Too low'
  else
    puts 'Too high'
  end
end