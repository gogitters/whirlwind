require 'faker'
people = []

2.times do
  puts "Please enter first name: "
  first_name = gets.chomp
  puts "Please enter last name: "
  last_name = gets.chomp
  puts "Please enter email: "
  email = gets.chomp

  random_number = rand(1000000000...9999999999)
  people << {first_name: first_name, last_name: last_name, email: email, account_number: Faker::Number.number(10)}
end

people.each do |person|
  puts """First name: #{person[:first_name]}
Last name: #{person[:last_name]}
Email: #{person[:email]}
Account Num: #{person[:account_number]}"""
end
