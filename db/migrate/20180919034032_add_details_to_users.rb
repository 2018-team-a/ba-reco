class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name_family_name, :string
    add_column :users, :name_name, :string
    add_column :users, :furigana_family_name, :string
    add_column :users, :furigana_name, :string
    add_column :users, :postal_code, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
  end
end
