class AlterPlacesAddLatAndLng < ActiveRecord::Migration
  def change
    rename_column: :places, :longitude, :longitude
  end
end
