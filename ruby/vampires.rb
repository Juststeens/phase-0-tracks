puts "How many employees will be processed?"
employees_to_process = gets.chomp


employees_to_process.to_i.times do
  puts "What is your name?"
  # name = gets.chomp
  name = "Drake"
  puts "How old are you?"
  # age = gets.chomp
  age = "21"
  puts "what year were you born"
  birth_year = gets.chomp
  # birth_year = "1973"
  puts "Do you enjoy Garlic bread? yes/no"
  garlic = gets.chomp
  # garlic = "yes"
  puts "Would you like to enroll in company health insurance? yes/no"
  insurance = gets.chomp  
  # insurance = "yes"


  vampire_status = "Results inconclusive"
  current_year = Time.new.year

  age_right = current_year - birth_year.to_i == age.to_i
  accept_garlic = garlic == "yes"
  enroll_insurance = insurance == "yes"

  if age_right && (accept_garlic || enroll_insurance)
    vampire_status = "Probably not a vampire."
  end

  if !age_right && ( !accept_garlic || !enroll_insurance)
      # true  && (false || true)
    vampire_status = "Probably a vampire."
  end

  if !age_right && !accept_garlic && !enroll_insurance
    vampire_status = "Almost certainly a vampire."
  end

  if name == "Drake Cula" || name == "Tu Fang"
    vampire_status = "Definitely a vampire."
  end


  puts vampire_status
puts
end

