class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :postal_code
      t.text :destination
      t.integer :user_id

      t.timestamps
    end
  end
end
