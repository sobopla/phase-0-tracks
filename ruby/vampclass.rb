# build the driver to get the class arguments to pass into initialize
#takes in arguments to flesh out the instance. 
#1.collect values from user 
#2.call methods to evaluate at the beginning of vampire evaluate method
#to be better in line with best practice


class VampireIntake
  attr_reader :age, :name, :year_born, :allergy, :vampire, :insurance, :garlic, :allergies, :real_age
  attr_writer :vampire

  def initialize(name,age,year_born,garlic,insurance)
    @name = name
    @age = age
    @year_born = year_born
    @garlic = garlic
    @insurance = insurance
    @allergies = []
    @vampire = "undetermined"
    @real_age = false
 end
    
  def garlic_eval
    wants_garlic = @garlic == "y"
  end
    
  def insurance_eval
    wants_insurance = @insurance == "y"
  end

  def allergy_eval #if this is sunshine, how do I stop all other loops? vampire_eval?
    if @allergies.include?('sunshine')
      @vampire = 'probably a vampire'
    end
    #@vampire
  end
  
  def real_age_eval
    if year_born + age == Time.new.year
    @real_age = true #|| (year_born + age Time.new.year - 1)
    end
  end
  
  
  def vampire_evaluate
    p "real_age #{real_age}, garlic #{garlic}, insurance #{insurance}, allergy #{allergies}"
    if real_age && (garlic_eval && insurance_eval)
      @vampire = "Probably not a vampire."
    end 
    # age = f / garlic = t / insurance = f **OR** 
    # age = f / garlic = f / insurance = t
    if real_age == false && (( garlic_eval && !insurance_eval ) || (!garlic_eval && insurance_eval))
      @vampire = "Probably a vampire."
    end

    if real_age == false && (garlic_eval == false && insurance_eval == false)
      @vampire = "Almost certainly a vampire"
    end

    if  name == "Drake Cula" || name == "Tu Fang"  
      @vampire = "Definitely a vampire" 
    end
    @vampire
  end
end #end of class


puts 'how many employees do you want to process?'
employee_count = gets.chomp.to_i
employees = [] 
allergy = ''

employee_count.times do
  puts 'what is your name'
  name = gets.chomp.to_s
  puts 'what is your age?'
  age = gets.chomp.to_i
  puts 'what year were you born?'
  year_born = gets.chomp.to_i
  puts 'Our company cafeteria serves garlic bread. Should we order some for you? (y/n)'
  garlic = gets.chomp
  puts 'Would you like to enroll in the company’s health insurance? (y/n)'
  insurance = gets.chomp.to_s
  # allergy
    until allergy == 'done' || allergy == 'sunshine'
      puts 'What are your allergies? when done put done'
      allergy = gets.chomp.to_s
      # @allergies.push(allergy)
    end
  x = VampireIntake.new(name,age,year_born,garlic,insurance) 
  employees << x
  x.allergy_eval
  x.garlic_eval
  x.insurance_eval
  x.real_age_eval
  x.vampire_evaluate
  p x 
  p x.vampire
end
# p employees
# x.sunshine
# p x.vampire
# how would I see all the instanciations 
# you need to iterate over the employees array and you could return the instances result something like
# employees.each do |person|
#   p person.vampire
# end
# why is it returning the number of employees