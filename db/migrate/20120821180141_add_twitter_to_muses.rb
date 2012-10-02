class AddTwitterToMuses < ActiveRecord::Migration
  def change
    add_column :muses, :twitter, :string
  end
end
