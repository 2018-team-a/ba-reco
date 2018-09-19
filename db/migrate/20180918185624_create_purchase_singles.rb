class CreatePurchaseSingles < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_singles do |t|
      t.integer :product_id
      t.integer :sheet_number
      t.integer :purchase_id

      t.timestamps
    end
  end
end
