class RemoveDetailsFromPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column :purchases, :product_id, :integer
    remove_column :purchases, :sheet_number, :integer
  end
end
