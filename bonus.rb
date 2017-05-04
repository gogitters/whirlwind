people = []
2.times do
  person = {}
  correct_email_format = false
  puts "Enter a first name:"
  person[:first_name] = gets.chomp
  puts "Enter a last name:"
  person[:last_name] = gets.chomp
  # second bonus
  until correct_email_format # until correct_email_format == true
    puts "Enter an email address:"
    email_address = gets.chomp
    if email_address.include?("@") && email_address.end_with?(".com")
      person[:email] = email_address
      correct_email_format = true
    else
      puts "Incorrect format. Try again!"
    end
  end

  person[:account_number] = rand.to_s[2..11].to_i
  people << person
end

people.each do |person|
  puts "First Name: #{person[:first_name]}"
  puts "Last Name: #{person[:last_name]}"
  puts "Email: #{person[:email]}"
  puts "Account Number: #{person[:account_number]}"
end

# first bonus
puts "Enter Account Number: "
acct_number = gets.chomp.to_i
people.each do |person|
  if person[:account_number] == acct_number
    puts "First Name: #{person[:first_name]}"
    puts "Last Name: #{person[:last_name]}"
    puts "Email: #{person[:email]}"
    break #stops from looping through the array after printing out the information, since account number should be unique
  end
end