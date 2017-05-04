foods = []
5.times do
  puts "Please enter your favorite food:"
  foods << gets.chomp
end

# foods.each do |food|
#   puts "I love #{food}!"
# end

foods.each_with_index do |food, index|
  puts "#{index + 1}. #{food}"
end