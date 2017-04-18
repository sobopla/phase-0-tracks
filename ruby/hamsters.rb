name = gets.chomp.to_s

puts "What is the volume level of the hamster?(1-10) "
volume = gets.chomp.to_i

puts "What color is the hamsters fur? "
fur_color = gets.chomp


puts "Is the hamster a good candidate for adoption?  "
adoption = gets.chomp

puts "What is the estimated age of hamster?  "
age = nil
age = gets.chomp.to_f

# puts "The age is #{age} "

if adoption == "yes" || "ya" || "y" || "yup"
  adoption = true
  else
  adoption = false
end



puts "The name of the hamster is: #{name}"
puts "The loudness of the hamster is: #{volume}"
puts "The hamsters color is: #{fur_color}"
puts "Is #{name} Adoptable? #{adoption}"
puts "The estimated age of #{name} is: #{age}"