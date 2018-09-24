class AddDetailsToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :product_id, :integer
    add_column :purchases, :sheet_number, :integer
  end
end
