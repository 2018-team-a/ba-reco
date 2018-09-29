class AddDestinationToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :destination, :string
  end
end
