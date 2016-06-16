class AddCharacterNameToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :character_name, :string
  end
end
