class RenameLabelColumnToProducts < ActiveRecord::Migration[5.2]
  def change
  	rename_column :products, :label, :label_id
  end
end
