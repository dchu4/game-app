class DropBoardTable < ActiveRecord::Migration
  def change
    drop_table :boards
    drop_table :game_boards
  end
end
