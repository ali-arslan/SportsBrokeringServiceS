class Match < ActiveRecord::Base
	enum match_type: [ :domestic, :international ]
	belongs_to :team_1, :class_name => 'Team'
   belongs_to :team_2, :class_name => 'Team'
   belongs_to :team

	def self.all_types
		%w(Domestic International)
	end

end
