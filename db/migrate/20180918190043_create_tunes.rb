class CreateTunes < ActiveRecord::Migration[5.2]
  def change
    create_table :tunes do |t|
      t.string :title
      t.integer :artist_id
      t.integer :genre_id
      t.integer :disc_id
      t.integer :track_number

      t.timestamps
    end
  end
end
