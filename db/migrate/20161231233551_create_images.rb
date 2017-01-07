class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :caption
      t.string :attachment

      t.integer :user_id
      t.integer :place_id

      t.timestamps null: false
  end

  add_index :images, [:user_id, :place_id]
  add_index :images, :place_id


end
end 