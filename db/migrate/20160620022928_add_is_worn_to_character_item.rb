class AddIsWornToCharacterItem < ActiveRecord::Migration
  def change
    add_column :character_items, :is_worn, :boolean
  end
end
