class RemoveLocationAndStateFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :location, :string
    remove_column :events, :state, :string, default: "draft"
  end
end
