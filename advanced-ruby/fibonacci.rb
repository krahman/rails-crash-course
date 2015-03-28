class Fibonacci
	def calc(n)
		return n if n < 2
		return calc(n - 1) + calc(n - 2)
	end
end