=begin
set index to zero
receive input

define encrypt method
loop by setting index less than word.length
  take a letter and increase index by 1
  move to the next letter in the string
end of loop

print the encrypted word

end of method
=end


def encrypt(word)
index = 0
alph = "abcdefghijklmnopqrstuvwxyz"
enc_word = ""
  while index < word.length
    if alph.index(word[index]).next == 26
      enc_word += alph[0]
    else
      enc_word += alph[alph.index(word[index]).next]
    end
    index += 1
  end
  # puts enc_word
  return enc_word
end

def decrypt(word)
index = 0
alph = "abcdefghijklmnopqrstuvwxyz".reverse
dec_word = ""
  while index < word.length
    if alph.index(word[index]).next == 26
      dec_word += alph[0]
    else
      dec_word += alph[alph.index(word[index]).next]
    end
    index += 1
  end
  # puts dec_word
  return dec_word
end
decrypt(encrypt("swordfish"))
# First, the encrypt method swtiched the letters forward
# Secondly, the decrypt method calls the encrypt return and switched the letters back

#Driver Code
def coder
  puts "You want to run encrypt or decrypt?"
  enc_or_dec = gets.chomp

  puts "Password:"
  pass = gets.chomp
  if enc_or_dec == "encrypt"
    encrypt(pass)
  elsif enc_or_dec == "decrypt"
    decrypt(pass)
  else
    puts "TRY AGAIN"
  end
end
