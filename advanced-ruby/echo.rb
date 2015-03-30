class Echo
	def method_missing(name, *args, &block)
		word = name
		puts "#{word}, #{word}, #{word}"
	end
end