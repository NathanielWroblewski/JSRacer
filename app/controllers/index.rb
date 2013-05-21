require 'faker'

get '/' do
  erb :index
end

post '/play' do
  p params
  @player1 = Player.find_or_create_by_name_and_password(params[:username1],params[:password1])
  @player2 = Player.find_or_create_by_name_and_password(params[:username2],params[:password2])
  #Throw error if passwords don't match
  @game = Game.create(:url => Faker::Lorem.characters(char_count = 6))
  erb :game
end
          