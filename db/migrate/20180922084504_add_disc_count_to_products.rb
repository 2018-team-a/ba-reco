class AddDiscCountToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :disc_count, :integer
  end
end
