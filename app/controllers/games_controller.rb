class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]


  def new
  end

  def index
    @tournament = Tournament.last
    @games = Game.all
    @participation = Participation.all
  end

  def create
    @tournament = Tournament.last
    @participations = Participation.where(tournament_id: @tournament.id)
    @tournament_participations = []

    @jon = @tournament_participations[0..7]

    until @jon == [] do 
      Game.create(tournament: @tournament, team_1: @jon[0], team_2: @jon[1])
      @jon.delete_at(0)
      @jon.delete_at(1)
    end

  end

  def update
  end

  def destroy
  end
end