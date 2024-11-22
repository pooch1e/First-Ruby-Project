# basic ops
# if 1 < 2
#   puts "hello"
# end

# puts "hello" if 1 < 2

# i = 0
# for i in 0..5
#   puts "i is #{i}"
#   i+=1
# end


#hashes
# my_hash = {
#   :name => "Joel",
#   :age => 28,
#   :title => "Mr"

# }
# puts my_hash[:name]

# your_name = gets
# 
#methods
def greeting(name)
  name.to_s
  "Hello #{name}"
end

puts greeting("joel")
def multiply(a, b)
  return a*b
end

puts multiply(10, 11)
