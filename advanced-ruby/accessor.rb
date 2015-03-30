class Accessor
	def self.accessor(attr)
		class_eval  "
			def #{attr}
				@#{attr}
			end

			def #{attr}=(val)
				@#{attr} = val
			end
		"
	end
end
		