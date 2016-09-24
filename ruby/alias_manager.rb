# ask for first and last name input
# compare names with vowels
# change any vowels in names to next vowel over
# switch order of names


name = nil
until name == "quit"
puts "what is your name?"
name = gets.chomp
letters = nil
def alias_generate(name)
  vowels = "aeiou".split('')
  letters = name.split('')
  letters.each_with_index do |letter, number|
    vowels.each_with_index do |vowel, index|
      if vowel == letter
        letters[number] = vowels[index+1]
          if vowel == "u"
            letters[number]=vowels[index-4]
          end
      end

    end
  end
  name = letters.join('')
end

def switch_name(name)
  reverse_name = name.reverse.split(' ')
  reverse_back = reverse_name.map {|a| a.reverse}
  reverse_back.join(' ')
end

# puts "#{alias_generate(name)} will be your alias."
switched_name = switch_name(name)
puts "#{alias_generate(switched_name)} will be your alias"
end
