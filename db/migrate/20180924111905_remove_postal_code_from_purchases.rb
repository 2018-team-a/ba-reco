class RemovePostalCodeFromPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column :purchases, :postal_code, :string
  end
end
