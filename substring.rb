#Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
#
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substringer(word, array)
  
  array_to_hash = array.map {|x| [x, 0]}.to_h
  # p array_to_hash

  # convert word to downcase for case sensitivity
  word = word.downcase

  # check if array contains the strings + substrings and then increment value by 1
  check_for_strings = array_to_hash.each do |key, _value|
    # Check each key in the hash for a substring match in the word
      matches = word.scan(/#{key}/).size # Count all occurrences of the key in the word
      array_to_hash[key] += matches if matches > 0
    end

end
p substringer("Howdy partner, sit down! How's it going?", dictionary)