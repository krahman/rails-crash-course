module Memoize
	def calc(n)
		@@memo ||= {}
		@@memo[n] ||= super
	end
end