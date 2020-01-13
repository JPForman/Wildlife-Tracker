class AddForeignKeyForSongs < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :sightings, :animals
  end
end
