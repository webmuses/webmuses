class AddEventTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_type_id, :integer
    add_index :events, :event_type_id
    add_column :articles, :event_type_id, :integer
    add_index :articles, :event_type_id
  end
end
