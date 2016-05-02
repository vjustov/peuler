def factorial
	fact = 1
	self.times { |f| fact = f == 0 ? fact : fact * f}
	fact
end
sum = 0
100.factorial.to_s.split(//).each { |n| sum = sum + n.to_i}
sum
