class RemoveDestinationIdFromPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column :purchases, :destination_id, :integer
  end
end
