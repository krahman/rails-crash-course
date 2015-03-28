require 'forwardable'

class Library
	extend Forwardable

	def_delegators :@books, :size, :push

	def initialize(books)
		@books = books
	end
end