class AddEnemySetToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :enemy_set, :integer
  end
end
