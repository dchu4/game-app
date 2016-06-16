class CreateGameBoards < ActiveRecord::Migration
  def change
    create_table :game_boards do |t|
      t.integer :board_id
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
