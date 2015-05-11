class Team < ActiveRecord::Base
	enum team_type: [ :domestic, :international ]
	has_many :matches
	
	def self.all_types
		%w(Domestic International)
	end
end
