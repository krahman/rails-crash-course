class Person
	
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def greet
		puts "Hello, #{@name}"
	end
	
end
