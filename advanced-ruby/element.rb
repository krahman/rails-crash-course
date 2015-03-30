load 'accessor.rb'

class Element < Accessor
	accessor :name

	def initialize(name)
		@name = name
	end
end