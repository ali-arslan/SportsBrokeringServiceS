class TeamsController < ApplicationController

 def index
   @all_types = Team.all_types
	@selected_types = params[:type] || {}
	if @selected_types != {}
		#@teams = Team.find_all_by_team_type(@selected_types.keys)
		#@teams = Team.all
		#@teams.each { |t|
		#	puts @selected_types.include? t.team_type
		#	if (@selected_types.include? t.team_type)
		#		puts 'selected'
		#	else
		#		@teams.delete(t)
		#	end
		#}
		if @selected_types.size == 1
			vals = @selected_types.map { |r| if r.first == 'International'
															1
														else
															0
														end}
			query = vals.map { |r| "team_type is '#{r}'"}
			@teams = Team.where(query)
			return @teams
		end
	end
   @teams = Team.order(team_type: :desc)
 end

end
