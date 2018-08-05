class ParticipationsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:new, :create]
	
	def new 
		@participation = Participation.new
		@tournament = Tournament.find(params[:tournament_id])
	end

	def create
		@user = current_user
		@tournament = Tournament.find(params[:tournament_id])
		@participation = Participation.new(participation_params)
		@participation.user = current_user
		@participation.tournament = @tournament
		if @participation.save
		  redirect_to tournament_path(@tournament)
		else	
		  render 'participations/new'
		end
	end

	private

	def participation_params
		params.require(:participation).permit(:name, :comments)
	end
end
