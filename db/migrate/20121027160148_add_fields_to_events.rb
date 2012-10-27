class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date_description, :string
    add_column :events, :past, :boolean, default: false
    add_column :events, :current, :string, default: false
    add_column :events, :price, :string
  end
end
