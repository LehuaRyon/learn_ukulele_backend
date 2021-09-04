class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :img_url
      t.string :link
      t.integer :genre_id

      t.timestamps
    end
  end
end
