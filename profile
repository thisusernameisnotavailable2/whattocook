#profile creator from user input and hashes

#get values from user for profile

puts "What's your name?"
    entname = gets.chomp
    
puts "What's your email?"
    entemail = gets.chomp
    
puts "What's your diet?"    
    entdiet = ["vegetarian", "vegan", "halaal", "kosher" ]
    entdiet = gets.chomp

puts "How big is your family?"
    entfamsize = gets.chomp.to_i
    if entfamsize != [1..11]
        puts "Please enter a number between 1-10"
    end 

puts "What styles of food do you enjoy?"
    entstyle = gets.chomp

puts "Any food allergies?"
    entallergies = gets.chomp

profile = Hash.new
profile["name"] = entname
profile["email"] = entemail
profile["diet"] = entdiet
profile["famsize"] = entfamsize
profile["style"] = entstyle
profile["allergies"] = entallergies

profile.each { |k,v| puts "#{k} : #{v}"}
