require 'prime'

total = 0
Prime.each(2000000) { |p| total = total + p}
puts total