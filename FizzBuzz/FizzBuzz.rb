def fizzbuzz (num)
	result = ""
	result << "Fizz" if num % 3 == 0 || num.to_s.include?("3")
	result << "Buzz" if num % 5 == 0 || num.to_s.include?("5")
	result << num.to_s if result == ""
	result
end

100.times { |x| 
	puts fizzbuzz(x+1)
}