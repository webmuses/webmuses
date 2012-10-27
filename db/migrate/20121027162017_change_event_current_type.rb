class ChangeEventCurrentType < ActiveRecord::Migration
  def up
    change_column :events, :current, :boolean
  end

  def down
    change_column :events, :current, :string
  end
end
