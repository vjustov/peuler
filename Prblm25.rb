f1 = 1
f2 = 1
fn = 0
c = 0 
while fn.to_s.length < 1000
	fn = f1 + f2
	f1 = f2
	f2 = fn
	c = c + 1
end
c+2