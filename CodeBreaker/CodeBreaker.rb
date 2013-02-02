class CodeBreaker
	def initialize (code)
		@code = code
	end

	public
	def check (exp_code)
		exes = "" 
		stars = ""
		for i in 0..3
			exes << "X" if @code[i] == exp_code[i]
			stars << "*" if @code[i] != exp_code[i] && (@code.include? exp_code[i]) && checkContains(exp_code.dup, exp_code[i])
		end
		exes + stars
	end

	private
	def checkContains(exp_code, char)
		code = @code.dup
		i = 0
		while code[i] != nil
			if exp_code[i] == code[i]
				code.slice! i
				exp_code.slice! i
			else
				i+=1
			end
		end
		return code.include?(char)
	end
end