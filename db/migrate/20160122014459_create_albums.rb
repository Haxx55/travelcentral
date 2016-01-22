class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :profile
      t.string :title
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
