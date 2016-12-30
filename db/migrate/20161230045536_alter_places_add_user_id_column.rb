class AlterPlacesAddUserIdColumn < ActiveRecord::Migration
  def change
    add_column :places, :latitude, :float
    add_index :places, :longitude, :float
  end
end
