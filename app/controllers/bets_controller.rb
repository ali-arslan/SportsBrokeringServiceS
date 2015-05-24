class BetsController < ApplicationController
	def index
		@bets = Bet.all
		userID = session[:currUserID] || 0
		if userID != 0
			@user = User.find(userID)
			#puts 'USERID:', @user.Name
		end
	end

	def new
		#puts params.inspect
		userID = session[:currUserID] || 0
		if userID != 0
			id = params[:format]
			puts id
			@match = Match.find(id)
			@user = User.find(userID)
			@team1 = Team.find(@match.team_1_id)
			@team2 = Team.find(@match.team_2_id)
		else
			flash[:status] = "Please sign in to place a bet."
			redirect_to matchs_path
		end
	end

	def new1
		puts params.inspect
	end
end
