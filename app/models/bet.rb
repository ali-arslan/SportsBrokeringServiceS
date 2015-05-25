class Bet < ActiveRecord::Base
	belongs_to :team, :class_name => 'User'
	belongs_to :match, :class_name => 'Match'
end
