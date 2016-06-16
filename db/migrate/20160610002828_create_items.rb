class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :cure_status
      t.string :recovery_amount
      t.integer :attack
      t.integer :defense
      t.integer :magic_attack
      t.integer :magic_defense

      t.timestamps null: false
    end
  end
end
