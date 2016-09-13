puts "How many employees will be processed?"
employees_to_process = gets.chomp


employees_to_process.to_i.times do
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "What year were you born?"
  birth_year = gets.chomp
  puts "Do you enjoy Garlic bread? yes/no"
  garlic = gets.chomp
  puts "Would you like to enroll in company health insurance? yes/no"
  insurance = gets.chomp  

  allergy = nil
  allergies = Array.new

  puts "Please list any allergies. Type 'done' when finished."

  until allergy == "done" || allergy == "sunshine" do     
    allergy = gets.chomp
    allergies << allergy
  end


  vampire_status = "Results inconclusive"
  current_year = Time.new.year

  age_right = current_year - birth_year.to_i == age.to_i
  accept_garlic = garlic == "yes"
  enroll_insurance = insurance == "yes"
  bad_allergy = allergy == "sunshine"

  if age_right && (accept_garlic || enroll_insurance)
    vampire_status = "Probably not a vampire."
  end

  if bad_allergy || ( !age_right && ( !accept_garlic || !enroll_insurance))
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

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

