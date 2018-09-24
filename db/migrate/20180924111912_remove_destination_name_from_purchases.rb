class RemoveDestinationNameFromPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column :purchases, :destination_name, :string
  end
end
