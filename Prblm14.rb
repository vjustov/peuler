def next!
	if self.even?
		self/2
	else
		3*self+1
	end
end

def chain
	n = self
	array = []
	while n != 1
		array << n
		n = n.next!
	end
	array
end

longest = []
1000000.times do |n|
	unless n == 0 
		chain = n.chain
		longest = chain.length > longest.length ? chain : longest
	end
end

longest.first
