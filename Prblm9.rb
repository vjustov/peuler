# A Pythagorean triplet is a set of three natural numbers, a < b < c, for
# which,
#
# a2 + b2 = c2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#
# Reasoning:
# a < b < c
# a^2 + b^2 = c^2
# c = sqrt(a^2 + b^2)
# c = 1000 - b - a
#
# from wikipedia: a b and c are coprimes

class SquareCalculator
  def initialize
    @results = {}
  end

  def square(n)
    if results[n]
      results[n]
    else
      results[n] =  n**2
    end
  end

  private
  attr_reader :results
end

def call
  calc = SquareCalculator.new
  result = 0

  1000.times do |a|
    (a..1000).each do |b|
      c = 1000 - a - b
      found = calc.square(a) + calc.square(b) == calc.square(c)
      if found
	result = a*b*c
	break
      end
    end
  end

  puts result

end

call
