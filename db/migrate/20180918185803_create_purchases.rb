class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.string :postal_code
      t.string :destination
      t.integer :status
      t.integer :total_price

      t.timestamps
    end
  end
end
