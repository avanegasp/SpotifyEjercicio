class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.numeric :number
      t.integer :album_id
      t.string :preview_url
    end
  end
end
