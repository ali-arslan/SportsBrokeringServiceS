class TeamController < ApplicationController

 def index
   @all_types = Team.all_types
	@selected_types = params[:types]
	if params[:types] != {}
	#	@teams = Team.find_all_by_type(@selected_types.keys)
	#	return @teams
	end
   @teams = Team.all
 end

end
