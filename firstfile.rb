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
# def greeting(name)
#   name.to_s
#   "Hello #{name}"
# end

# puts greeting("joel")
# def multiply(a, b)
#   return a*b
# end

# puts multiply(10, 11)


# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# Additionally, if the number is negative, return 0.

# Note: If the number is a multiple of both 3 and 5, only count it once.
# 

def add_it_up(number)
  output_array = []
  number_array = (1..number-1).to_a
  number_array.each do |n|
    if n % 3 == 0 || n % 5 == 0
      output_array.push(n)
    end
  end
  result = output_array.sum
  if result <= 0
    p 0
    return
  end
end

add_it_up(10)