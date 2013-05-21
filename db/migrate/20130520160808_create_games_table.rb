class CreateGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |column|
      column.string :winner, :url
      column.float :time
    end
  end
end
