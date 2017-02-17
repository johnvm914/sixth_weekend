# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

class Number
  
  def initialize(number)
    @number = number
  end
    
  def is_prime?
    count = 0
    x = 2.0
    while x <= @number
      if (@number/x) == (@number/x).to_i
        count += 1
      end
      x += 1
    end
    if count == 1
      return true
    else
      return false
    end
  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under
    x = @number
    while x >= 2
      if x == 2
        return "There is no prime number under 2."
      else
        x -= 1
        if Number.new(x).is_prime?
          return x
        end
      end
    end
  end
  
end
