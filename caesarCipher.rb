# frozen_string_literal: true

# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
# Pseudo
# Get string and number
# compare string to alphabet to get string numbers
# shift those numbers by whatever the input number is
# compare again to alphabet to find new numbers
# output new string and og shift number

def caesar_cipher(string, num)
  # init variables and create hash to link string

  alphabet = ('A'..'Z').to_a
  numbers = (1..26).to_a
  alphabet_link_number = alphabet.zip(numbers).to_h # new has from alphabet/num where a=1 etc

  string_input = string.split('')
  string_uppercase = string_input.map(&:upcase)
  # link string input to hash
  string_upcase_mapped = string_uppercase.map { |chars| alphabet_link_number[chars] }
  p string_upcase_mapped

  # need to add  shift num
  # need to loop through the array somehow and sure wrapping z-a

  shifted_num = string_upcase_mapped.map do |number|
    number.nil? ? nil : ((number + num - 1) % 26) + 1
  end
  p shifted_num

  # convert back to letters
  number_to_alphabet = alphabet_link_number.invert # switch hash key and value

  shifted_word = # I want array where numbers are equal to alph-num hash keys
    shifted_num.map do |words|
      number_to_alphabet[words]
    end
  p shifted_word.join
end

caesar_cipher('zoo shoe boo', 2)
