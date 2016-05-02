array = []
101.times do |a|
	unless a < 2
		101.times do |b|
			array << a**b unless b < 2
		end
		# array.uniq! if a%250 == 0
	end
end
array.uniq.length