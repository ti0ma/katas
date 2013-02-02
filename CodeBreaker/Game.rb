require "./CodeBreaker"
colors = "RAMVNI";
code = ""
4.times do
	code << colors[rand(0...colors.length)]
end
breaker = CodeBreaker.new(code)
puts "Let's start the game!!! The code is #{code}"
fin = false
until fin
	puts "Give me a code"
	expected = gets.chomp.upcase
	unless expected.length == 4
		puts "Should be 4 chars"
		next
	end
	unless expected.scan(/[A-Z]/).all? {|char| colors.include?(char)}
		puts "You used invalid chars"
		next
	end
	result = breaker.check(expected);
	puts "The result is #{result}"

	fin = result == "XXXX"

	puts fin ? "You win!!!" : "Nope!!!"
end