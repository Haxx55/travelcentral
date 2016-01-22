class CreateAlbumImages < ActiveRecord::Migration
  def change
    create_table :album_images do |t|
      t.string :file
      t.references :album

      t.timestamps null: false
    end
  end
end
