#####################################################
#  www.cyreath.co.uk  /   cyreath.blogspot.co.uk    #
#####################################################

#  Ruby Basics - 15 : Pulling it all together so far (in a very 'construed' way ;)

# Let's declare our LOCAL variables and get some values straight away (Video 2 and 5)
puts "Welcome, what's your first name? (Dave, Alan or yours)"
userFirstName = gets.chomp.downcase

puts "Hi, #{userFirstName.capitalize}. What's your surname?" 
userLastName = gets.chomp.capitalize

# Let's create an example GLOBAL variable (Video 6)
$globalNameText = "User name is: "

# Now we'll make an INSTANCE variable from the user name (Video 7)
@userFullname = userFirstName.upcase + " " << userLastName
#upcase is also string method 

# Finally let's get a CONSTANT in use (Video 8)
puts "#{userFirstName.capitalize}, how old are you?" #capitalize is string method like downcase, here it's temporary
USER_AGE = gets.chomp #remember we UPPERCASE Constants to differentiate against Classes

# Put the correctly formatted name to screen
puts $globalNameText + @userFullname

# set up an array with the template roles (Video 9)
rolesArray = ["Developer", "Tester"]

# Depending on what the users first name is we'll respond with more details (Video 10)
case userFirstName
when "dave"
    puts "#{userFirstName.capitalize} you are a #{USER_AGE} year old #{rolesArray[0]}"
    userRole = rolesArray[0]
  
  when "alan"
    puts "#{userFirstName.capitalize} you are a #{USER_AGE} year old #{rolesArray[1]}"
    userRole = rolesArray[1]
    
  else
    puts "You must be a new member of staff, welcome!"
    
end

# Here we use a nested IF to check for career changes (Video 12)
puts "Do you want a change of career? (Yes or Y or No or N)"
careerChange = gets.chomp.downcase

if careerChange =~ /\A(yes|y)\z/ then
  
    if userFirstName == "dave" # (Video 11)
      puts "#{userFirstName.capitalize}, you are a now a #{rolesArray[1]}"
      userRole = rolesArray[1]
      
      elsif userFirstName == "alan" or userFirstName == "Alan"
        puts "#{userFirstName.capitalize}, you are now a #{rolesArray[0]}"
        userRole = rolesArray[0]
        
      else
        puts "Easy #{userFirstName.capitalize}, you just joined us!"
      
    end
  
  elsif careerChange =~ /\A(no|n)\z/ then
    puts "Great, keep up the good work!"
    
end

# Now we'll check if the user has done a days work! 
hoursWorked = 0
userRecord = [userFirstName, userLastName, userRole, USER_AGE]

while hoursWorked < 8 # we could do an UNTIL hoursWorked == 8 here instead   # (Video 13)
  puts "How many more hours have you now worked #{userFirstName}? (enter 0 to 8)"
  puts "total hrs worked is so far: #{hoursWorked}"
  
  hoursWorked = hoursWorked + gets.chomp.to_i

    hoursWorked < 8 ? (puts "Keep going, the day's not over!") : (puts "Well done, go home and relax.") #example of if Ternary (Video 13)
      
end

userRecord.push hoursWorked #Pushing to an array (Video 14)
puts userRecord

