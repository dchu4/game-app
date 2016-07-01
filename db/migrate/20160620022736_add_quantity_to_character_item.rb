class AddQuantityToCharacterItem < ActiveRecord::Migration
  def change
    add_column :character_items, :quantity, :integer
  end
end
