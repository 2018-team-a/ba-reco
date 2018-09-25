class RenameDestinationColumnToPurchases < ActiveRecord::Migration[5.2]
  def change
    rename_column :purchases, :destination, :destination_name
  end
end
