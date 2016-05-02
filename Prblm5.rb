count = 0
flag = false
factors = 0
while !flag
	count = count + 5
	21.times do |n|
		if n > 0
			factors = factors + 1 if count%n == 0
		end
	end
	if factors == 20
		flag = true
	else
		factors = 0
	end
	#puts count
end
puts count