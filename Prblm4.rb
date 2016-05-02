
	def palindrome?
		self.to_s == self.to_s.reverse	
	end


j = 100
i= 100
palindromes = []
while j<1000
	#puts j*i
	while i<1000
		palindromes << i*j if (i*j).palindrome?
		i = i + 1
	end
	i=100
	j = j + 1
end

palindromes.sort!.last