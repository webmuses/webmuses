class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, :icon, :address
      t.timestamps
    end
    add_column :events, :place_id, :integer
    add_index :events, :place_id
  end
end
