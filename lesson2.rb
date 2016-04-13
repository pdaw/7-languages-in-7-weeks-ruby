line_counter = 1

File.readlines('lesson2.txt').each do |line|
  if line =~ /(.*)one(.*)/
    puts "Line number: #{line_counter}. Content: '#{line.chomp}'"
  end

  line_counter += 1
end