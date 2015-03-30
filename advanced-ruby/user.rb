class User
	FEATURES = ['create', 'update', 'delete']

	FEATURES.each do |f|
		define_method "can_#{f}!" do
			@features[f] = true
		end

		define_method "can_#{f}?" do
			# puts @features
			||@features[f]
		end

		def initialize
			@features = {}
		end
	end
end