# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all;
Participation.destroy_all;
Tournament.destroy_all;
User.destroy_all;

Tournament.create( name: "Tournoi de l'été" , price_per_team: 9,  description: "LE tournoi à ne pas rater avant de clore ton année sur les pelouses de nanterre au soleil",  phone_number: 0620512274,  place: "Nanterre Université",  number_of_teams: 20, photo: "https://picsum.photos/400/500/?random");
@tournament = Tournament.last

User.create(email: "baptiste.chebassier28@gmail.com", password: "azerty")

20.times do |x|
	@user = User.create(email: Faker::Internet.email, password: "azerty", name: Faker::Name.name)
	Participation.create!(tournament_id: @tournament.id ,user_id: @user.id, name: @user.name, comments: Faker::HowIMetYourMother.quote)
end

@tournament = Tournament.last
@participations = Participation.where(tournament_id: @tournament)


@jon = @participations[0..7]

until @jon == [] do 
  Game.create!(tournament: @tournament, team_1: @jon[0].id, team_2: @jon[1].id)
  @jon.delete_at(1)
  @jon.delete_at(0)
end

