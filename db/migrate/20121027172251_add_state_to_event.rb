class AddStateToEvent < ActiveRecord::Migration
  def change
    remove_column :events, :past
    remove_column :events, :current
    add_column :events, :state, :string, default: "draft"
  end
end
