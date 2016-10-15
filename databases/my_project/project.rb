require 'sqlite3'
require 'faker'

$db = SQLite3::Database.new("youtube.db")
$db.results_as_hash = true
create_table = <<-SQL
  CREATE TABLE adult(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
style VARCHAR(255),
audience VARCHAR(255),
subs INTEGER
  )
SQL

# $db.execute(create_table)

# $db.execute("INSERT INTO child (name, style, audience, subs) VALUES ('Tobuscus', 'Comedy', 'Child', '7000000')")

# $db.execute("INSERT INTO teen (name, style, audience, subs) VALUES ('Markiplier', 'Comedy', 'Teen', '14000000')")

# $db.execute("INSERT INTO adult (name, style, audience, subs) VALUES ('Cryaotic', 'Gameplay', 'Adult', '2000000')")

def adult_viewer
  puts
  puts
  puts "Alright! Adult audiences are subject to viewing horror videos containing violence and gore often youtubers with mature audiences curse."
  puts
  puts
  puts "What sort of content are you looking for?"
  puts
  puts "'Gameplay', 'Comedy', or 'Story'?"
  content = gets.chomp
  if content.downcase == 'gameplay'
    adults = $db.execute("SELECT * FROM adult")
      adults.each do |adult|
          if adult['style'] == 'Gameplay'
            puts "here's a list of youtubers you might like"
            puts adult['name']
          end
      end

  elsif content.downcase == 'comedy'
    adults = $db.execute("SELECT * FROM adult")
      adults.each do |adult|
          if adult['style'] == 'Comedy'
            puts "here's a list of youtubers you might like"
            puts adult['name']
          end
      end

  else content.downcase == 'story'
    adults = $db.execute("SELECT * FROM adult")
      adults.each do |adult|
        puts "Here's a list of youtubers you might like!"
          if adult['style'] == 'Story'
            puts adult['name']
          end
      end
  end
end

def teen_viewer
  puts
  puts
  puts "Alright! Teenage audiences are subject to viewing horror videos containing violence occasionally youtubers with teen audiences curse."
  puts
  puts
  puts
  puts "What sort of content are you looking for?"
  puts
  puts "'Gameplay', 'Comedy', or 'Story'?"
  content = gets.chomp
  if content.downcase == 'gameplay'
    teens = $db.execute("SELECT * FROM teen")
      teens.each do |teen|
          if teen['style'] == 'Gameplay'
            puts "here's a list of youtubers you might like"
            puts teen['name']
          end
      end

  elsif content.downcase == 'comedy'
    teens = $db.execute("SELECT * FROM teen")
      teens.each do |teen|
          if teen['style'] == 'Comedy'
            puts "here's a list of youtubers you might like"
            puts teen['name']
          end
      end

  else content.downcase == 'story'
    teens = $db.execute("SELECT * FROM teen")
      teens.each do |teen|
          if teen['style'] == 'Story'
            puts "here's a list of youtubers you might like"
            puts teen['name']
          end
      end
  end
end

def child_viewer
  puts
  puts
  puts "Alright! Child audiences will not encounter any cursing and mild violence while viewing."
  puts
  puts
  puts
  puts "What sort of content are you looking for?"
  puts
  puts "'Gameplay', 'Comedy', or 'Story'?"
  content = gets.chomp
  if content.downcase == 'gameplay'
    children = $db.execute("SELECT * FROM child")
      children.each do |child|
          if child['style'] == 'Gameplay'
            puts "here's a list of youtubers you might like"
            puts child['name']
          end
      end

  elsif content.downcase == 'comedy'
    children = $db.execute("SELECT * FROM child")
      children.each do |child|
          if child['style'] == 'Comedy'
            puts "here's a list of youtubers you might like"
            puts child['name']
          end
      end

  else content.downcase == 'story'
    children = $db.execute("SELECT * FROM child")
      children.each do |child|
          if child['style'] == 'Story'
            puts "here's a list of youtubers you might like"
            puts child['name']
          end
      end
  end
end

puts "Welcome to a youtube gaming quick find app"
puts "This app will allow us you to search through content you are looking for to find a good youtuber for you to watch!"
puts
puts
puts
puts
puts
puts "First: What kind of audience are you a part of?"
puts "'Child', 'Teen' or 'Adult'?"
puts "Please enter your choice below!"
age_group = gets.chomp

if age_group.downcase =='adult'
  adult_viewer

elsif age_group.downcase == 'teen'
  teen_viewer

else
  child_viewer

end



