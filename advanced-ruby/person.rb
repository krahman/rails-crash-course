load 'modules/distract.rb'

class Person
	include Distractable

	attr_accessor :name

	def initialize(name)
		@name = name
	end
end