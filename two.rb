count = 0
# loop
# until count > 10
#   puts count
#   count += 1
# end

# 11.times do
#   puts count
#   count += 1
# end

result = 1
unless result
  puts "Hello!"
end

# sam = {cook: 9, crepes: false}
# sally = {languages: 6, french: true}

# if sam[:cook] > 10 && sally[:languages] > 5
#   puts "They should date!"
# elsif sam[:crepes] || sally[:french]
#   puts 'they should marry!'
# end

recipes = ["cookies", "pie", "cake", "cupcakes", "juice", "fries", "chocolate", "peas", "carrots", "tears"]
languages = ["French", "mandarin", "arabic", "english", "spanish", "russian", "asl"]

if recipes.length > 10 && languages.length > 5
  puts "They should date!"
end

languages.map! {|l| l.downcase }

if recipes.include?("crepes") || languages.include?("french")
  puts "They should get married. Aww."
end