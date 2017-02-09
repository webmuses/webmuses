class AddAwwwesomesToMuses < ActiveRecord::Migration[5.0]
  def change
    add_column :muses, :awwwesomes, :boolean, default: false
  end
end
