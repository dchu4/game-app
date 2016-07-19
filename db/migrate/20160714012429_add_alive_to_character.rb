class AddAliveToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :alive, :boolean
    add_column :characters, :hp, :integer
  end
end
