class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :class
      t.integer :attack
      t.integer :defense
      t.integer :magic_attack
      t.integer :magic_defense
      t.integer :str
      t.integer :int
      t.integer :dex
      t.integer :vit
      t.integer :luk
      t.string :helm
      t.string :l_hand
      t.string :r_hand
      t.string :body_armor
      t.string :gloves
      t.string :shoes
      t.string :leg_armor
      t.boolean :is_npc

      t.timestamps null: false
    end
  end
end
