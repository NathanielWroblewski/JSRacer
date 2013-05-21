class CreateGamesPlayersTable < ActiveRecord::Migration
  def change
    create_table :games_players do |column|
      column.references :player
      column.references :game
    end
  end
end
