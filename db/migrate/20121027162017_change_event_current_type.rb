class ChangeEventCurrentType < ActiveRecord::Migration
  def up
    remove_column :events, :current
    add_column :events, :current, :boolean
  end
end
