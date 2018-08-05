class TournamentsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:new]
  # before_action :authenticate_admin!


  def new
  	@tournament = Tournament.new
  end

  def create 
    # raise
  	@tournament = Tournament.new(tournament_params)
    if @tournament.save
      redirect_to tournament_path(@tournament)
    else
      render :new
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def update
  	# @tournament = Tournament.find(params[:id]
  end

  def destroy
  end

  private

  def tournament_params
    params.require(:tournament).permit( :date, :place, :number_of_teams, :price_per_team, :name, :phone_number )
  end

end
