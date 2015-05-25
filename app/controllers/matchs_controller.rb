class MatchsController < ApplicationController
	def index
		@all_types = Match.all_types
		userID = session[:currUserID] || 0
		if userID != 0
			@user = User.find(userID)
		end
		@selected_types = params[:type] || {}
		if @selected_types != {}
			if @selected_types.size == 1
				vals = @selected_types.map { |r| if r.first == 'International'
																1
															else
																0
															end}
				query = vals.map { |r| "match_type is '#{r}'"}
				@matches = Match.where(query)
				return @matches
			end	
		end
		@matches = Match.all
	end
end
