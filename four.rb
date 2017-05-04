names = []
keep_going = true
while keep_going
  puts "Enter a name: (type 'done' when finished)"
  input_name = gets.chomp
  if input_name == "done"
    keep_going = false
    # break
  else
    names << input_name
  end
end

# new_names = names.shuffle
names.shuffle!

until names.length == 0
  if names.length == 3
    # return 3 names
    group = names.pop(3)
    # ["Bob", "Sally", "Doni"]
  else
    group = names.pop(2)
  end
  puts "Group: #{group.join(', ')}"
end
