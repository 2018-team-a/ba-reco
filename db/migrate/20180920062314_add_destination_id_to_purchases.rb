class AddDestinationIdToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :destination_id, :integer
  end
end


