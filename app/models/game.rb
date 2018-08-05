class Game < ApplicationRecord
  belongs_to :tournament
  


  # def createGames
  # 	@tournament = Tournament.last
  # 	@participations = Participation.all
  # 	@tournament_participations = []
  # 	@participations.each do |participation|
  # 		@tournament_participations << participation if participation.tournament_id = @tournament.id
  # 	end
  # 	@jon = @tournament_participations[0..7]
  # 	until @jon == [] do 
  # 		Game.create(tournament: @tournament, team_1: @jon[0], team_2: @jon[1])
  # 		@jon.delete_at(0)
  # 		@jon.delete_at(1)
  # 	end
  	
  # 	if @jon > 1
  # 		Game.create(tournament: @tournament.id, team_1: @jon[0], team_2: @jon[1])
  # 		@jon.delete[0]
  # 		@jon.delete[1]

  # end

end
