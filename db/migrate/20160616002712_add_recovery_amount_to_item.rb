class AddRecoveryAmountToItem < ActiveRecord::Migration
  def change
    add_column :items, :recovery_amount, :integer
  end
end
