class AddAwwwesomesToCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :awwwesomes, :boolean, default: false
  end
end
