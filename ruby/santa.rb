class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :age

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @ethnicity = ethnicity
    @gender = gender
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Happy Holidays!"
    puts @gender
  end

  def eat_milk_and_cookies
    puts "That was a delicious chocolate chip cookie"
  end

  def celebrate_birthday
    @age += 1
  end

  def age
    puts @age
  end

  def ethnicity
    puts @ethnicity
  end

  def gender
    puts @gender
  end

  def get_mad_at(reindeer)
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    reindeer_ranking.each_with_index do |reindeers, position|
      if reindeers == reindeer
        last_reindeer = reindeer_ranking[-1]
        reindeer_ranking[position] = last_reindeer
        reindeer_ranking[-1] = reindeer
      puts reindeer_ranking
      end
    end
  end

end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
5.times do | santa |
  puts "---------"
  santa = Santa.new(genders.sample, ethnicities.sample)
  santas_age = santa.age = rand(140)
  puts "Santa is #{santas_age} years old"
  puts "Santa's gender is #{santa.gender}"
  puts "Santa's ethnicity is #{santa.ethnicity}"
end


