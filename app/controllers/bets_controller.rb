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
		#puts params.inspect
		#b=Bet.create()
		#b.update_attributes(:matchID_id=>@match,)
		value = params[:amount]
		matchID = params[:matchID]
		team = params[:team]
		@user = User.find(session[:currUserID])
		#puts value, matchID, team
		@match = Match.find(matchID)
		if @match.blank?
			flash[:status] = "Wrong matchID entered."
			redirect_to new_bet_path(matchID)
		end
		if value.to_i > @user.Balance
			puts "Not enough balance"
			flash[:status] = "You do not have enough money."
			redirect_to new_bet_path(matchID)
		else
			b=@user.Balance
			newBalance = b-value.to_i
			@user.update_attributes(:Balance=>newBalance)
			puts newBalance
			b=Bet.create()
			id=session[:currUserID]
			b.update_attributes(:matchID_id=>matchID, :userID_id=>id, :value=>value)
			b.save
			@bets = Bet.where("name is ?", @user.Name)
			flash[:status] = "Bet was successfully placed."
			redirect_to bets_path
		end
	end
end
