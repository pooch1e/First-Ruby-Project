# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
# Pseudo
# Get string and number
# compare string to alphabet to get string numbers
# shift those numbers by whatever the input number is
# compare again to alphabet to find new numbers
# output new string and og shift number

def caesar_cipher(string, num)
# init variables and create hash to link string

alphabet = ("A".."Z").to_a
numbers = (1..26).to_a
alphabet_link_number = alphabet.zip(numbers).to_h #new has from alphabet/num where a=1 etc
# p alphabet_link_number

string_input = string.split("")
string_uppercase = string_input.map {|string| string.upcase}
# link string input to hash
string_upcase_mapped = string_uppercase.map { |chars| alphabet_link_number[chars] }
p string_upcase_mapped
  
#need to add  shift num
# need to loop through the array somehow
shifted_num = string_upcase_mapped.map {|number| number + num}
p shifted_num
# figure out how to wrap
if shifted_num >= 26
  num = 1
end
  
end

caesar_cipher("hello", 10)
