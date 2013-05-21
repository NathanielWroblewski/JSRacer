class CreatePlayersTable < ActiveRecord::Migration
  def change
    create_table :players do |column|
      column.string :name, :password
    end
  end
end
