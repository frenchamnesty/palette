class AlterPlacesAddLatAndLng < ActiveRecord::Migration
    add_column :places, :latitude, :float
    add_index :places, :longitude, :float
  def change
  end
end
