#Hardmode: Create a program that creates a random 3 letter string and asks the user to guess what letters are in the string is over 5 tries, after that tell them they lost if they havent figured it out.

def generate_rando_string(size = 3)
  charset = %w{A C D E F G H J K M N P Q R T V W X Y Z}
  (0...size).map{ charset.to_a[rand(charset.size)] }.join
end

rando = generate_rando_string
p rando
puts "Enter 3 Letter String"

answer = gets.chomp
i = 1
while i < 6
if answer.upcase == rando
  p "got it"
break
elsif i >= 5
  puts "Answer was #{rando} GAMEOVER"
  break
  
elsif i < 3 || i > 3 
   tries = (5 - i)
  puts "you should input 3 letter string"
  puts "#{tries} tries remaining"
  puts "enter 3 letters again"
  answer = gets.chomp
  i += 1
  
else
  tries = (5 - i)
  puts "try again"
  puts "#{tries} tries remaining"
  puts "enter 3 letters again"
  answer = gets.chomp
  i += 1

end
end
