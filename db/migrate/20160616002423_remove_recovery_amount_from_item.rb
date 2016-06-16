class RemoveRecoveryAmountFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :recovery_amount, :string
  end
end
